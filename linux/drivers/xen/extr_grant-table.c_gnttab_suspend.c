
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* unmap_frames ) () ;} ;


 int XENFEAT_auto_translated_physmap ;
 TYPE_1__* gnttab_interface ;
 int stub1 () ;
 int xen_feature (int ) ;

int gnttab_suspend(void)
{
 if (!xen_feature(XENFEAT_auto_translated_physmap))
  gnttab_interface->unmap_frames();
 return 0;
}
