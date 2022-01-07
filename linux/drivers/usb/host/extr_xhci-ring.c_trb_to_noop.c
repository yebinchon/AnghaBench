
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * field; } ;
struct TYPE_3__ {int control; } ;
union xhci_trb {TYPE_2__ generic; TYPE_1__ link; } ;
typedef int u32 ;


 int TRB_CHAIN ;
 int TRB_CYCLE ;
 int TRB_TYPE (int ) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ trb_is_link (union xhci_trb*) ;

__attribute__((used)) static void trb_to_noop(union xhci_trb *trb, u32 noop_type)
{
 if (trb_is_link(trb)) {

  trb->link.control &= cpu_to_le32(~TRB_CHAIN);
 } else {
  trb->generic.field[0] = 0;
  trb->generic.field[1] = 0;
  trb->generic.field[2] = 0;

  trb->generic.field[3] &= cpu_to_le32(TRB_CYCLE);
  trb->generic.field[3] |= cpu_to_le32(TRB_TYPE(noop_type));
 }
}
