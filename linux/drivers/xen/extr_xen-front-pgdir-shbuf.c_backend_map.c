
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_page_directory {int * gref; } ;
struct xen_front_pgdir_shbuf {int num_pages; unsigned char* directory; int num_grefs; TYPE_1__* xb_dev; int * backend_map_handles; int * pages; } ;
struct gnttab_map_grant_ref {scalar_t__ status; int handle; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int dev; int otherend_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GNTMAP_host_map ;
 scalar_t__ GNTST_okay ;
 int PAGE_SIZE ;
 int XEN_NUM_GREFS_PER_PAGE ;
 int backend_unmap (struct xen_front_pgdir_shbuf*) ;
 int dev_err (int *,char*,int,...) ;
 int gnttab_map_refs (struct gnttab_map_grant_ref*,int *,int *,int) ;
 int gnttab_set_map_op (struct gnttab_map_grant_ref*,int ,int ,int ,int ) ;
 void* kcalloc (int,int,int ) ;
 int kfree (struct gnttab_map_grant_ref*) ;
 scalar_t__ unlikely (int) ;
 int xen_page_to_vaddr (int ) ;

__attribute__((used)) static int backend_map(struct xen_front_pgdir_shbuf *buf)
{
 struct gnttab_map_grant_ref *map_ops = ((void*)0);
 unsigned char *ptr;
 int ret, cur_gref, cur_dir_page, cur_page, grefs_left;

 map_ops = kcalloc(buf->num_pages, sizeof(*map_ops), GFP_KERNEL);
 if (!map_ops)
  return -ENOMEM;

 buf->backend_map_handles = kcalloc(buf->num_pages,
        sizeof(*buf->backend_map_handles),
        GFP_KERNEL);
 if (!buf->backend_map_handles) {
  kfree(map_ops);
  return -ENOMEM;
 }






 ptr = buf->directory;
 grefs_left = buf->num_pages;
 cur_page = 0;
 for (cur_dir_page = 0; cur_dir_page < buf->num_grefs; cur_dir_page++) {
  struct xen_page_directory *page_dir =
   (struct xen_page_directory *)ptr;
  int to_copy = XEN_NUM_GREFS_PER_PAGE;

  if (to_copy > grefs_left)
   to_copy = grefs_left;

  for (cur_gref = 0; cur_gref < to_copy; cur_gref++) {
   phys_addr_t addr;

   addr = xen_page_to_vaddr(buf->pages[cur_page]);
   gnttab_set_map_op(&map_ops[cur_page], addr,
       GNTMAP_host_map,
       page_dir->gref[cur_gref],
       buf->xb_dev->otherend_id);
   cur_page++;
  }

  grefs_left -= to_copy;
  ptr += PAGE_SIZE;
 }
 ret = gnttab_map_refs(map_ops, ((void*)0), buf->pages, buf->num_pages);


 for (cur_page = 0; cur_page < buf->num_pages; cur_page++) {
  buf->backend_map_handles[cur_page] = map_ops[cur_page].handle;
  if (unlikely(map_ops[cur_page].status != GNTST_okay))
   dev_err(&buf->xb_dev->dev,
    "Failed to map page %d: %d\n",
    cur_page, map_ops[cur_page].status);
 }

 if (ret) {
  dev_err(&buf->xb_dev->dev,
   "Failed to map grant references, ret %d", ret);
  backend_unmap(buf);
 }

 kfree(map_ops);
 return ret;
}
