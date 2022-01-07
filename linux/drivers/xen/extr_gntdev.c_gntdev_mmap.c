
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_pgoff; int vm_flags; scalar_t__ vm_mm; scalar_t__ vm_start; scalar_t__ vm_end; struct gntdev_grant_map* vm_private_data; int * vm_ops; } ;
struct gntdev_priv {scalar_t__ mm; int lock; } ;
struct gntdev_grant_map {int flags; int count; struct vm_area_struct* vma; int pages; scalar_t__ pages_vm_start; int users; } ;
struct file {struct gntdev_priv* private_data; } ;


 int EINVAL ;
 int GNTMAP_host_map ;
 int GNTMAP_readonly ;
 int VM_DONTCOPY ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_MIXEDMAP ;
 int VM_SHARED ;
 int VM_WRITE ;
 int XENFEAT_gnttab_map_avail_bits ;
 int apply_to_page_range (scalar_t__,scalar_t__,scalar_t__,int ,struct gntdev_grant_map*) ;
 int find_grant_ptes ;
 struct gntdev_grant_map* gntdev_find_map_index (struct gntdev_priv*,int,int) ;
 int gntdev_map_grant_pages (struct gntdev_grant_map*) ;
 int gntdev_put_map (struct gntdev_priv*,struct gntdev_grant_map*) ;
 int gntdev_vmops ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int,int,scalar_t__,int) ;
 int pr_warn (char*) ;
 int refcount_inc (int *) ;
 int set_grant_ptes_as_special ;
 int unmap_grant_pages (struct gntdev_grant_map*,int ,int ) ;
 scalar_t__ use_ptemod ;
 int vm_map_pages_zero (struct vm_area_struct*,int ,int ) ;
 int vma_pages (struct vm_area_struct*) ;
 int xen_feature (int ) ;

__attribute__((used)) static int gntdev_mmap(struct file *flip, struct vm_area_struct *vma)
{
 struct gntdev_priv *priv = flip->private_data;
 int index = vma->vm_pgoff;
 int count = vma_pages(vma);
 struct gntdev_grant_map *map;
 int err = -EINVAL;

 if ((vma->vm_flags & VM_WRITE) && !(vma->vm_flags & VM_SHARED))
  return -EINVAL;

 pr_debug("map %d+%d at %lx (pgoff %lx)\n",
   index, count, vma->vm_start, vma->vm_pgoff);

 mutex_lock(&priv->lock);
 map = gntdev_find_map_index(priv, index, count);
 if (!map)
  goto unlock_out;
 if (use_ptemod && map->vma)
  goto unlock_out;
 if (use_ptemod && priv->mm != vma->vm_mm) {
  pr_warn("Huh? Other mm?\n");
  goto unlock_out;
 }

 refcount_inc(&map->users);

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

 mutex_unlock(&priv->lock);

 if (use_ptemod) {
  map->pages_vm_start = vma->vm_start;
  err = apply_to_page_range(vma->vm_mm, vma->vm_start,
       vma->vm_end - vma->vm_start,
       find_grant_ptes, map);
  if (err) {
   pr_warn("find_grant_ptes() failure.\n");
   goto out_put_map;
  }
 }

 err = gntdev_map_grant_pages(map);
 if (err)
  goto out_put_map;

 if (!use_ptemod) {
  err = vm_map_pages_zero(vma, map->pages, map->count);
  if (err)
   goto out_put_map;
 } else {
 }

 return 0;

unlock_out:
 mutex_unlock(&priv->lock);
 return err;

out_unlock_put:
 mutex_unlock(&priv->lock);
out_put_map:
 if (use_ptemod) {
  map->vma = ((void*)0);
  unmap_grant_pages(map, 0, map->count);
 }
 gntdev_put_map(priv, map);
 return err;
}
