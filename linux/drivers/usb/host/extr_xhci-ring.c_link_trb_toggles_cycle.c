
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int control; } ;
union xhci_trb {TYPE_1__ link; } ;


 int LINK_TOGGLE ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static bool link_trb_toggles_cycle(union xhci_trb *trb)
{
 return le32_to_cpu(trb->link.control) & LINK_TOGGLE;
}
