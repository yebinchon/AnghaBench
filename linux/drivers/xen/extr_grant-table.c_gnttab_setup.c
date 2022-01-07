
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * addr; } ;
struct TYPE_3__ {int * vaddr; } ;


 int ENOMEM ;
 int ENOSYS ;
 int XENFEAT_auto_translated_physmap ;
 int gnttab_map (int ,unsigned int) ;
 unsigned int gnttab_max_grant_frames () ;
 TYPE_2__ gnttab_shared ;
 unsigned int nr_grant_frames ;
 int pr_warn (char*) ;
 TYPE_1__ xen_auto_xlat_grant_frames ;
 scalar_t__ xen_feature (int ) ;

__attribute__((used)) static int gnttab_setup(void)
{
 unsigned int max_nr_gframes;

 max_nr_gframes = gnttab_max_grant_frames();
 if (max_nr_gframes < nr_grant_frames)
  return -ENOSYS;

 if (xen_feature(XENFEAT_auto_translated_physmap) && gnttab_shared.addr == ((void*)0)) {
  gnttab_shared.addr = xen_auto_xlat_grant_frames.vaddr;
  if (gnttab_shared.addr == ((void*)0)) {
   pr_warn("gnttab share frames is not mapped!\n");
   return -ENOMEM;
  }
 }
 return gnttab_map(0, nr_grant_frames - 1);
}
