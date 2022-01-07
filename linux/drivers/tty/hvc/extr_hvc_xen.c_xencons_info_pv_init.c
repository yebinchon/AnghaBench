
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xencons_info {int vtermno; int list; int intf; int evtchn; } ;
struct TYPE_4__ {int mfn; int evtchn; } ;
struct TYPE_5__ {TYPE_1__ domU; } ;
struct TYPE_6__ {TYPE_2__ console; } ;


 int gfn_to_virt (int ) ;
 int list_add_tail (int *,int *) ;
 TYPE_3__* xen_start_info ;
 int xenconsoles ;

__attribute__((used)) static int xencons_info_pv_init(struct xencons_info *info, int vtermno)
{
 info->evtchn = xen_start_info->console.domU.evtchn;

 info->intf = gfn_to_virt(xen_start_info->console.domU.mfn);
 info->vtermno = vtermno;

 list_add_tail(&info->list, &xenconsoles);

 return 0;
}
