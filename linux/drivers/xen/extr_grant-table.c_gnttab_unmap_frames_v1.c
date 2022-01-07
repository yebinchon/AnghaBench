
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;


 int arch_gnttab_unmap (int ,int ) ;
 TYPE_1__ gnttab_shared ;
 int nr_grant_frames ;

__attribute__((used)) static void gnttab_unmap_frames_v1(void)
{
 arch_gnttab_unmap(gnttab_shared.addr, nr_grant_frames);
}
