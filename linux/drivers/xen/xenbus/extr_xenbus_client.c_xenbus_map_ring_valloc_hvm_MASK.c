#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pages; void* addr; } ;
struct xenbus_map_node {unsigned int nr_handles; TYPE_1__ hvm; int /*<<< orphan*/  handles; int /*<<< orphan*/  next; } ;
struct xenbus_device {int dummy; } ;
struct map_ring_valloc_hvm {int /*<<< orphan*/  addrs; int /*<<< orphan*/  phys_addrs; int /*<<< orphan*/  idx; } ;
typedef  int /*<<< orphan*/  grant_ref_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GNTMAP_host_map ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int VM_IOREMAP ; 
 int VM_MAP ; 
 unsigned int XENBUS_MAX_RING_GRANTS ; 
 unsigned int FUNC0 (unsigned int) ; 
 int FUNC1 (struct xenbus_device*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct map_ring_valloc_hvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct xenbus_map_node*) ; 
 struct xenbus_map_node* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xenbus_map_ring_setup_grant_hvm ; 
 int /*<<< orphan*/  FUNC12 (struct xenbus_device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xenbus_valloc_lock ; 
 int /*<<< orphan*/  xenbus_valloc_pages ; 

__attribute__((used)) static int FUNC13(struct xenbus_device *dev,
				      grant_ref_t *gnt_ref,
				      unsigned int nr_grefs,
				      void **vaddr)
{
	struct xenbus_map_node *node;
	int err;
	void *addr;
	bool leaked = false;
	struct map_ring_valloc_hvm info = {
		.idx = 0,
	};
	unsigned int nr_pages = FUNC0(nr_grefs);

	if (nr_grefs > XENBUS_MAX_RING_GRANTS)
		return -EINVAL;

	*vaddr = NULL;

	node = FUNC6(sizeof(*node), GFP_KERNEL);
	if (!node)
		return -ENOMEM;

	err = FUNC2(nr_pages, node->hvm.pages);
	if (err)
		goto out_err;

	FUNC4(node->hvm.pages, nr_grefs,
			     xenbus_map_ring_setup_grant_hvm,
			     &info);

	err = FUNC1(dev, gnt_ref, nr_grefs, node->handles,
				info.phys_addrs, GNTMAP_host_map, &leaked);
	node->nr_handles = nr_grefs;

	if (err)
		goto out_free_ballooned_pages;

	addr = FUNC11(node->hvm.pages, nr_pages, VM_MAP | VM_IOREMAP,
		    PAGE_KERNEL);
	if (!addr) {
		err = -ENOMEM;
		goto out_xenbus_unmap_ring;
	}

	node->hvm.addr = addr;

	FUNC9(&xenbus_valloc_lock);
	FUNC7(&node->next, &xenbus_valloc_pages);
	FUNC10(&xenbus_valloc_lock);

	*vaddr = addr;
	return 0;

 out_xenbus_unmap_ring:
	if (!leaked)
		FUNC12(dev, node->handles, nr_grefs, info.addrs);
	else
		FUNC8("leaking %p size %u page(s)",
			 addr, nr_pages);
 out_free_ballooned_pages:
	if (!leaked)
		FUNC3(nr_pages, node->hvm.pages);
 out_err:
	FUNC5(node);
	return err;
}