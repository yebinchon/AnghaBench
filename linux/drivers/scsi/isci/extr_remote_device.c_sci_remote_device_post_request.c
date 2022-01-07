
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int remote_node_index; } ;
struct isci_remote_device {TYPE_1__ rnc; struct isci_port* owning_port; } ;
struct isci_port {int physical_port_index; int owning_controller; } ;


 int ISCI_PEG ;
 int SCU_CONTEXT_COMMAND_LOGICAL_PORT_SHIFT ;
 int SCU_CONTEXT_COMMAND_PROTOCOL_ENGINE_GROUP_SHIFT ;
 int sci_controller_post_request (int ,int) ;

void sci_remote_device_post_request(struct isci_remote_device *idev, u32 request)
{
 struct isci_port *iport = idev->owning_port;
 u32 context;

 context = request |
    (ISCI_PEG << SCU_CONTEXT_COMMAND_PROTOCOL_ENGINE_GROUP_SHIFT) |
    (iport->physical_port_index << SCU_CONTEXT_COMMAND_LOGICAL_PORT_SHIFT) |
    idev->rnc.remote_node_index;

 sci_controller_post_request(iport->owning_controller, context);
}
