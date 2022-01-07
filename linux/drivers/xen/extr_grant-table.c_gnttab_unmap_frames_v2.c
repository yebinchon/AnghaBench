
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;


 int arch_gnttab_unmap (int ,int ) ;
 TYPE_1__ gnttab_shared ;
 int grstatus ;
 int nr_grant_frames ;
 int nr_status_frames (int ) ;

__attribute__((used)) static void gnttab_unmap_frames_v2(void)
{
 arch_gnttab_unmap(gnttab_shared.addr, nr_grant_frames);
 arch_gnttab_unmap(grstatus, nr_status_frames(nr_grant_frames));
}
