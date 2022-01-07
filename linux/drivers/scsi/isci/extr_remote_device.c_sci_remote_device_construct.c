
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {int rnc; int sm; scalar_t__ started_request_count; struct isci_port* owning_port; } ;
struct isci_port {int dummy; } ;


 int SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX ;
 int SCI_DEV_INITIAL ;
 int sci_init_sm (int *,int ,int ) ;
 int sci_remote_device_state_table ;
 int sci_remote_node_context_construct (int *,int ) ;

__attribute__((used)) static void sci_remote_device_construct(struct isci_port *iport,
      struct isci_remote_device *idev)
{
 idev->owning_port = iport;
 idev->started_request_count = 0;

 sci_init_sm(&idev->sm, sci_remote_device_state_table, SCI_DEV_INITIAL);

 sci_remote_node_context_construct(&idev->rnc,
            SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX);
}
