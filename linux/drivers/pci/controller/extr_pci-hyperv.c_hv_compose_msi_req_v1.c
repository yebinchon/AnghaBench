
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_6__ {int vector_count; int cpu_mask; int delivery_mode; int vector; } ;
struct TYPE_5__ {int slot; } ;
struct TYPE_4__ {int type; } ;
struct pci_create_interrupt {TYPE_3__ int_desc; TYPE_2__ wslot; TYPE_1__ message_type; } ;
struct cpumask {int dummy; } ;


 int CPU_AFFINITY_ALL ;
 int PCI_CREATE_INTERRUPT_MESSAGE ;
 int dest_Fixed ;

__attribute__((used)) static u32 hv_compose_msi_req_v1(
 struct pci_create_interrupt *int_pkt, struct cpumask *affinity,
 u32 slot, u8 vector)
{
 int_pkt->message_type.type = PCI_CREATE_INTERRUPT_MESSAGE;
 int_pkt->wslot.slot = slot;
 int_pkt->int_desc.vector = vector;
 int_pkt->int_desc.vector_count = 1;
 int_pkt->int_desc.delivery_mode = dest_Fixed;





 int_pkt->int_desc.cpu_mask = CPU_AFFINITY_ALL;

 return sizeof(*int_pkt);
}
