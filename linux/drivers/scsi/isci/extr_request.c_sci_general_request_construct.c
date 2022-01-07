
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_request {int post_context; scalar_t__ scu_status; int sci_status; int saved_rx_frame_index; int protocol; struct isci_remote_device* target_device; int sm; } ;
struct isci_remote_device {int dummy; } ;
struct isci_host {int dummy; } ;


 int SAS_PROTOCOL_NONE ;
 int SCI_REQ_INIT ;
 int SCI_SUCCESS ;
 int SCU_INVALID_FRAME_INDEX ;
 int sci_init_sm (int *,int ,int ) ;
 int sci_request_state_table ;

__attribute__((used)) static void
sci_general_request_construct(struct isci_host *ihost,
       struct isci_remote_device *idev,
       struct isci_request *ireq)
{
 sci_init_sm(&ireq->sm, sci_request_state_table, SCI_REQ_INIT);

 ireq->target_device = idev;
 ireq->protocol = SAS_PROTOCOL_NONE;
 ireq->saved_rx_frame_index = SCU_INVALID_FRAME_INDEX;

 ireq->sci_status = SCI_SUCCESS;
 ireq->scu_status = 0;
 ireq->post_context = 0xFFFFFFFF;
}
