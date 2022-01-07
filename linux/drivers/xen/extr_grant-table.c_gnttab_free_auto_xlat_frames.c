
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vaddr; scalar_t__ count; int * pfn; } ;


 int kfree (int *) ;
 TYPE_1__ xen_auto_xlat_grant_frames ;
 int xen_unmap (int *) ;

void gnttab_free_auto_xlat_frames(void)
{
 if (!xen_auto_xlat_grant_frames.count)
  return;
 kfree(xen_auto_xlat_grant_frames.pfn);
 xen_unmap(xen_auto_xlat_grant_frames.vaddr);

 xen_auto_xlat_grant_frames.pfn = ((void*)0);
 xen_auto_xlat_grant_frames.count = 0;
 xen_auto_xlat_grant_frames.vaddr = ((void*)0);
}
