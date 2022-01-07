
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_front_pgdir_shbuf {int num_pages; struct gnttab_unmap_grant_ref* backend_map_handles; TYPE_1__* xb_dev; int * pages; int grefs; } ;
struct gnttab_unmap_grant_ref {scalar_t__ status; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GNTMAP_host_map ;
 scalar_t__ GNTST_okay ;
 int dev_err (int *,char*,int,...) ;
 int gnttab_set_unmap_op (struct gnttab_unmap_grant_ref*,int ,int ,struct gnttab_unmap_grant_ref) ;
 int gnttab_unmap_refs (struct gnttab_unmap_grant_ref*,int *,int *,int) ;
 struct gnttab_unmap_grant_ref* kcalloc (int,int,int ) ;
 int kfree (struct gnttab_unmap_grant_ref*) ;
 scalar_t__ unlikely (int) ;
 int xen_page_to_vaddr (int ) ;

__attribute__((used)) static int backend_unmap(struct xen_front_pgdir_shbuf *buf)
{
 struct gnttab_unmap_grant_ref *unmap_ops;
 int i, ret;

 if (!buf->pages || !buf->backend_map_handles || !buf->grefs)
  return 0;

 unmap_ops = kcalloc(buf->num_pages, sizeof(*unmap_ops),
       GFP_KERNEL);
 if (!unmap_ops)
  return -ENOMEM;

 for (i = 0; i < buf->num_pages; i++) {
  phys_addr_t addr;

  addr = xen_page_to_vaddr(buf->pages[i]);
  gnttab_set_unmap_op(&unmap_ops[i], addr, GNTMAP_host_map,
        buf->backend_map_handles[i]);
 }

 ret = gnttab_unmap_refs(unmap_ops, ((void*)0), buf->pages,
    buf->num_pages);

 for (i = 0; i < buf->num_pages; i++) {
  if (unlikely(unmap_ops[i].status != GNTST_okay))
   dev_err(&buf->xb_dev->dev,
    "Failed to unmap page %d: %d\n",
    i, unmap_ops[i].status);
 }

 if (ret)
  dev_err(&buf->xb_dev->dev,
   "Failed to unmap grant references, ret %d", ret);

 kfree(unmap_ops);
 kfree(buf->backend_map_handles);
 buf->backend_map_handles = ((void*)0);
 return ret;
}
