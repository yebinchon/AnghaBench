
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int flags; int addr; } ;
struct gntdev_grant_map {TYPE_2__* unmap_ops; int * pages; int * kunmap_ops; TYPE_1__ notify; } ;
struct gntab_unmap_queue_data {int count; int * pages; int * kunmap_ops; TYPE_2__* unmap_ops; } ;
struct TYPE_4__ {int handle; scalar_t__ status; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int UNMAP_NOTIFY_CLEAR_BYTE ;
 int gnttab_unmap_refs_sync (struct gntab_unmap_queue_data*) ;
 int page_to_pfn (int ) ;
 scalar_t__* pfn_to_kaddr (int ) ;
 int pr_debug (char*,int,scalar_t__) ;
 scalar_t__ use_ptemod ;

__attribute__((used)) static int __unmap_grant_pages(struct gntdev_grant_map *map, int offset,
          int pages)
{
 int i, err = 0;
 struct gntab_unmap_queue_data unmap_data;

 if (map->notify.flags & UNMAP_NOTIFY_CLEAR_BYTE) {
  int pgno = (map->notify.addr >> PAGE_SHIFT);
  if (pgno >= offset && pgno < offset + pages) {

   uint8_t *tmp = pfn_to_kaddr(page_to_pfn(map->pages[pgno]));
   tmp[map->notify.addr & (PAGE_SIZE-1)] = 0;
   map->notify.flags &= ~UNMAP_NOTIFY_CLEAR_BYTE;
  }
 }

 unmap_data.unmap_ops = map->unmap_ops + offset;
 unmap_data.kunmap_ops = use_ptemod ? map->kunmap_ops + offset : ((void*)0);
 unmap_data.pages = map->pages + offset;
 unmap_data.count = pages;

 err = gnttab_unmap_refs_sync(&unmap_data);
 if (err)
  return err;

 for (i = 0; i < pages; i++) {
  if (map->unmap_ops[offset+i].status)
   err = -EINVAL;
  pr_debug("unmap handle=%d st=%d\n",
   map->unmap_ops[offset+i].handle,
   map->unmap_ops[offset+i].status);
  map->unmap_ops[offset+i].handle = -1;
 }
 return err;
}
