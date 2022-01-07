
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xen_pfn_t ;
struct TYPE_2__ {int addr; } ;


 int BUG_ON (int) ;
 int arch_gnttab_map_shared (int *,unsigned int,int ,int *) ;
 int gnttab_max_grant_frames () ;
 TYPE_1__ gnttab_shared ;

__attribute__((used)) static int gnttab_map_frames_v1(xen_pfn_t *frames, unsigned int nr_gframes)
{
 int rc;

 rc = arch_gnttab_map_shared(frames, nr_gframes,
        gnttab_max_grant_frames(),
        &gnttab_shared.addr);
 BUG_ON(rc);

 return 0;
}
