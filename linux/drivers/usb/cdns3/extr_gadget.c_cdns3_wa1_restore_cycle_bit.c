
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns3_endpoint {int wa1_trb_index; TYPE_1__* wa1_trb; scalar_t__ wa1_cycle_bit; scalar_t__ wa1_set; } ;
struct TYPE_2__ {int control; } ;


 int trace_cdns3_wa1 (struct cdns3_endpoint*,char*) ;

void cdns3_wa1_restore_cycle_bit(struct cdns3_endpoint *priv_ep)
{

 if (priv_ep->wa1_set) {
  trace_cdns3_wa1(priv_ep, "restore cycle bit");

  priv_ep->wa1_set = 0;
  priv_ep->wa1_trb_index = 0xFFFF;
  if (priv_ep->wa1_cycle_bit) {
   priv_ep->wa1_trb->control =
    priv_ep->wa1_trb->control | 0x1;
  } else {
   priv_ep->wa1_trb->control =
    priv_ep->wa1_trb->control & ~0x1;
  }
 }
}
