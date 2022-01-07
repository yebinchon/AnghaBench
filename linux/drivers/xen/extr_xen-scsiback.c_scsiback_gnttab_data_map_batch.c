
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct gnttab_map_grant_ref {scalar_t__ status; int handle; } ;
typedef int grant_handle_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 scalar_t__ GNTST_okay ;
 int SCSIBACK_INVALID_HANDLE ;
 int get_page (struct page*) ;
 int gnttab_map_refs (struct gnttab_map_grant_ref*,int *,struct page**,int) ;
 int pr_err (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int scsiback_gnttab_data_map_batch(struct gnttab_map_grant_ref *map,
 struct page **pg, grant_handle_t *grant, int cnt)
{
 int err, i;

 if (!cnt)
  return 0;

 err = gnttab_map_refs(map, ((void*)0), pg, cnt);
 BUG_ON(err);
 for (i = 0; i < cnt; i++) {
  if (unlikely(map[i].status != GNTST_okay)) {
   pr_err("invalid buffer -- could not remap it\n");
   map[i].handle = SCSIBACK_INVALID_HANDLE;
   err = -ENOMEM;
  } else {
   get_page(pg[i]);
  }
  grant[i] = map[i].handle;
 }
 return err;
}
