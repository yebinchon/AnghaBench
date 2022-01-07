
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sci_port_properties {int phy_mask; } ;
struct TYPE_2__ {int remote_node_index; } ;
struct isci_remote_device {int connection_rate; TYPE_1__ rnc; int device_port_width; } ;
struct isci_port {int owning_controller; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;


 int SCI_SUCCESS ;
 int hweight32 (int ) ;
 int sci_controller_allocate_remote_node_context (int ,struct isci_remote_device*,int *) ;
 int sci_port_get_max_allowed_speed (struct isci_port*) ;
 int sci_port_get_properties (struct isci_port*,struct sci_port_properties*) ;
 int sci_remote_device_construct (struct isci_port*,struct isci_remote_device*) ;

__attribute__((used)) static enum sci_status sci_remote_device_da_construct(struct isci_port *iport,
             struct isci_remote_device *idev)
{
 enum sci_status status;
 struct sci_port_properties properties;

 sci_remote_device_construct(iport, idev);

 sci_port_get_properties(iport, &properties);

 idev->device_port_width = hweight32(properties.phy_mask);

 status = sci_controller_allocate_remote_node_context(iport->owning_controller,
            idev,
            &idev->rnc.remote_node_index);

 if (status != SCI_SUCCESS)
  return status;

 idev->connection_rate = sci_port_get_max_allowed_speed(iport);

 return SCI_SUCCESS;
}
