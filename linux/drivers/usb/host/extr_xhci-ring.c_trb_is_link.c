
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int control; } ;
union xhci_trb {TYPE_1__ link; } ;


 int TRB_TYPE_LINK_LE32 (int ) ;

__attribute__((used)) static bool trb_is_link(union xhci_trb *trb)
{
 return TRB_TYPE_LINK_LE32(trb->link.control);
}
