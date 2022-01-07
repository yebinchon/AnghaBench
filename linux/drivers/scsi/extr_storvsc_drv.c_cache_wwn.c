
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int secondary_port_wwn; int secondary_node_wwn; int primary_port_wwn; int primary_node_wwn; scalar_t__ primary_active; } ;
struct vstor_packet {TYPE_1__ wwn_packet; } ;
struct storvsc_device {void* port_name; void* node_name; } ;


 void* wwn_to_u64 (int ) ;

__attribute__((used)) static void cache_wwn(struct storvsc_device *stor_device,
        struct vstor_packet *vstor_packet)
{



 if (vstor_packet->wwn_packet.primary_active) {
  stor_device->node_name =
   wwn_to_u64(vstor_packet->wwn_packet.primary_node_wwn);
  stor_device->port_name =
   wwn_to_u64(vstor_packet->wwn_packet.primary_port_wwn);
 } else {
  stor_device->node_name =
   wwn_to_u64(vstor_packet->wwn_packet.secondary_node_wwn);
  stor_device->port_name =
   wwn_to_u64(vstor_packet->wwn_packet.secondary_port_wwn);
 }
}
