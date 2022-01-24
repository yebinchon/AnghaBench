#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vm_area_struct {int vm_pgoff; int vm_flags; scalar_t__ vm_mm; scalar_t__ vm_start; scalar_t__ vm_end; struct gntdev_grant_map* vm_private_data; int /*<<< orphan*/ * vm_ops; } ;
struct gntdev_priv {scalar_t__ mm; int /*<<< orphan*/  lock; } ;
struct gntdev_grant_map {int flags; int /*<<< orphan*/  count; struct vm_area_struct* vma; int /*<<< orphan*/  pages; scalar_t__ pages_vm_start; int /*<<< orphan*/  users; } ;
struct file {struct gntdev_priv* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int GNTMAP_host_map ; 
 int GNTMAP_readonly ; 
 int VM_DONTCOPY ; 
 int VM_DONTDUMP ; 
 int VM_DONTEXPAND ; 
 int VM_MIXEDMAP ; 
 int VM_SHARED ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  XENFEAT_gnttab_map_avail_bits ; 
 int FUNC0 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct gntdev_grant_map*) ; 
 int /*<<< orphan*/  find_grant_ptes ; 
 struct gntdev_grant_map* FUNC1 (struct gntdev_priv*,int,int) ; 
 int FUNC2 (struct gntdev_grant_map*) ; 
 int /*<<< orphan*/  FUNC3 (struct gntdev_priv*,struct gntdev_grant_map*) ; 
 int /*<<< orphan*/  gntdev_vmops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  set_grant_ptes_as_special ; 
 int /*<<< orphan*/  FUNC9 (struct gntdev_grant_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ use_ptemod ; 
 int FUNC10 (struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct file *flip, struct vm_area_struct *vma)
{
	struct gntdev_priv *priv = flip->private_data;
	int index = vma->vm_pgoff;
	int count = FUNC11(vma);
	struct gntdev_grant_map *map;
	int err = -EINVAL;

	if ((vma->vm_flags & VM_WRITE) && !(vma->vm_flags & VM_SHARED))
		return -EINVAL;

	FUNC6("map %d+%d at %lx (pgoff %lx)\n",
			index, count, vma->vm_start, vma->vm_pgoff);

	FUNC4(&priv->lock);
	map = FUNC1(priv, index, count);
	if (!map)
		goto unlock_out;
	if (use_ptemod && map->vma)
		goto unlock_out;
	if (use_ptemod && priv->mm != vma->vm_mm) {
		FUNC7("Huh? Other mm?\n");
		goto unlock_out;
	}

	FUNC8(&map->users);

	vma->vm_ops = &gntdev_vmops;

	vma->vm_flags |= VM_DONTEXPAND | VM_DONTDUMP | VM_MIXEDMAP;

	if (use_ptemod)
		vma->vm_flags |= VM_DONTCOPY;

	vma->vm_private_data = map;

	if (use_ptemod)
		map->vma = vma;

	if (map->flags) {
		if ((vma->vm_flags & VM_WRITE) &&
				(map->flags & GNTMAP_readonly))
			goto out_unlock_put;
	} else {
		map->flags = GNTMAP_host_map;
		if (!(vma->vm_flags & VM_WRITE))
			map->flags |= GNTMAP_readonly;
	}

	FUNC5(&priv->lock);

	if (use_ptemod) {
		map->pages_vm_start = vma->vm_start;
		err = FUNC0(vma->vm_mm, vma->vm_start,
					  vma->vm_end - vma->vm_start,
					  find_grant_ptes, map);
		if (err) {
			FUNC7("find_grant_ptes() failure.\n");
			goto out_put_map;
		}
	}

	err = FUNC2(map);
	if (err)
		goto out_put_map;

	if (!use_ptemod) {
		err = FUNC10(vma, map->pages, map->count);
		if (err)
			goto out_put_map;
	} else {
#ifdef CONFIG_X86
		/*
		 * If the PTEs were not made special by the grant map
		 * hypercall, do so here.
		 *
		 * This is racy since the mapping is already visible
		 * to userspace but userspace should be well-behaved
		 * enough to not touch it until the mmap() call
		 * returns.
		 */
		if (!xen_feature(XENFEAT_gnttab_map_avail_bits)) {
			apply_to_page_range(vma->vm_mm, vma->vm_start,
					    vma->vm_end - vma->vm_start,
					    set_grant_ptes_as_special, NULL);
		}
#endif
	}

	return 0;

unlock_out:
	FUNC5(&priv->lock);
	return err;

out_unlock_put:
	FUNC5(&priv->lock);
out_put_map:
	if (use_ptemod) {
		map->vma = NULL;
		FUNC9(map, 0, map->count);
	}
	FUNC3(priv, map);
	return err;
}