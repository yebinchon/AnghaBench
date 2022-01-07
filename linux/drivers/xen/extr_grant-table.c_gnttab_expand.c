
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int grefs_per_grant_frame; } ;


 int BUG_ON (int ) ;
 int ENOSPC ;
 int gnttab_free_count ;
 TYPE_1__* gnttab_interface ;
 int gnttab_map (unsigned int,unsigned int) ;
 unsigned int gnttab_max_grant_frames () ;
 int grow_gnttab_list (unsigned int) ;
 unsigned int nr_grant_frames ;
 int pr_warn_ratelimited (char*,unsigned int,unsigned int,unsigned int,int ,unsigned int) ;

__attribute__((used)) static int gnttab_expand(unsigned int req_entries)
{
 int rc;
 unsigned int cur, extra;

 BUG_ON(gnttab_interface == ((void*)0));
 cur = nr_grant_frames;
 extra = ((req_entries + gnttab_interface->grefs_per_grant_frame - 1) /
   gnttab_interface->grefs_per_grant_frame);
 if (cur + extra > gnttab_max_grant_frames()) {
  pr_warn_ratelimited("xen/grant-table: max_grant_frames reached"
        " cur=%u extra=%u limit=%u"
        " gnttab_free_count=%u req_entries=%u\n",
        cur, extra, gnttab_max_grant_frames(),
        gnttab_free_count, req_entries);
  return -ENOSPC;
 }

 rc = gnttab_map(cur, cur + extra - 1);
 if (rc == 0)
  rc = grow_gnttab_list(extra);

 return rc;
}
