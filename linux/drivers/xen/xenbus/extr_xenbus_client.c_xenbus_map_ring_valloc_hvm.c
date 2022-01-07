
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pages; void* addr; } ;
struct xenbus_map_node {unsigned int nr_handles; TYPE_1__ hvm; int handles; int next; } ;
struct xenbus_device {int dummy; } ;
struct map_ring_valloc_hvm {int addrs; int phys_addrs; int idx; } ;
typedef int grant_ref_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GNTMAP_host_map ;
 int PAGE_KERNEL ;
 int VM_IOREMAP ;
 int VM_MAP ;
 unsigned int XENBUS_MAX_RING_GRANTS ;
 unsigned int XENBUS_PAGES (unsigned int) ;
 int __xenbus_map_ring (struct xenbus_device*,int *,unsigned int,int ,int ,int ,int*) ;
 int alloc_xenballooned_pages (unsigned int,int ) ;
 int free_xenballooned_pages (unsigned int,int ) ;
 int gnttab_foreach_grant (int ,unsigned int,int ,struct map_ring_valloc_hvm*) ;
 int kfree (struct xenbus_map_node*) ;
 struct xenbus_map_node* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pr_alert (char*,void*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 void* vmap (int ,unsigned int,int,int ) ;
 int xenbus_map_ring_setup_grant_hvm ;
 int xenbus_unmap_ring (struct xenbus_device*,int ,unsigned int,int ) ;
 int xenbus_valloc_lock ;
 int xenbus_valloc_pages ;

__attribute__((used)) static int xenbus_map_ring_valloc_hvm(struct xenbus_device *dev,
          grant_ref_t *gnt_ref,
          unsigned int nr_grefs,
          void **vaddr)
{
 struct xenbus_map_node *node;
 int err;
 void *addr;
 bool leaked = 0;
 struct map_ring_valloc_hvm info = {
  .idx = 0,
 };
 unsigned int nr_pages = XENBUS_PAGES(nr_grefs);

 if (nr_grefs > XENBUS_MAX_RING_GRANTS)
  return -EINVAL;

 *vaddr = ((void*)0);

 node = kzalloc(sizeof(*node), GFP_KERNEL);
 if (!node)
  return -ENOMEM;

 err = alloc_xenballooned_pages(nr_pages, node->hvm.pages);
 if (err)
  goto out_err;

 gnttab_foreach_grant(node->hvm.pages, nr_grefs,
        xenbus_map_ring_setup_grant_hvm,
        &info);

 err = __xenbus_map_ring(dev, gnt_ref, nr_grefs, node->handles,
    info.phys_addrs, GNTMAP_host_map, &leaked);
 node->nr_handles = nr_grefs;

 if (err)
  goto out_free_ballooned_pages;

 addr = vmap(node->hvm.pages, nr_pages, VM_MAP | VM_IOREMAP,
      PAGE_KERNEL);
 if (!addr) {
  err = -ENOMEM;
  goto out_xenbus_unmap_ring;
 }

 node->hvm.addr = addr;

 spin_lock(&xenbus_valloc_lock);
 list_add(&node->next, &xenbus_valloc_pages);
 spin_unlock(&xenbus_valloc_lock);

 *vaddr = addr;
 return 0;

 out_xenbus_unmap_ring:
 if (!leaked)
  xenbus_unmap_ring(dev, node->handles, nr_grefs, info.addrs);
 else
  pr_alert("leaking %p size %u page(s)",
    addr, nr_pages);
 out_free_ballooned_pages:
 if (!leaked)
  free_xenballooned_pages(nr_pages, node->hvm.pages);
 out_err:
 kfree(node);
 return err;
}
