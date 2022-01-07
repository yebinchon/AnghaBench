
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int current_state_id; } ;
struct isci_request {TYPE_1__ sm; int saved_rx_frame_index; struct isci_host* owning_controller; } ;
struct isci_host {int dummy; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;
typedef enum sci_base_request_states { ____Placeholder_sci_base_request_states } sci_base_request_states ;


 int SCI_FAILURE_INVALID_STATE ;
 int SCI_REQ_COMPLETED ;
 int SCI_REQ_FINAL ;
 int SCI_SUCCESS ;
 int SCU_INVALID_FRAME_INDEX ;
 scalar_t__ WARN_ONCE (int,char*,int ) ;
 int req_state_name (int) ;
 int sci_change_state (TYPE_1__*,int ) ;
 int sci_controller_release_frame (struct isci_host*,int ) ;

enum sci_status sci_request_complete(struct isci_request *ireq)
{
 enum sci_base_request_states state;
 struct isci_host *ihost = ireq->owning_controller;

 state = ireq->sm.current_state_id;
 if (WARN_ONCE(state != SCI_REQ_COMPLETED,
        "isci: request completion from wrong state (%s)\n",
        req_state_name(state)))
  return SCI_FAILURE_INVALID_STATE;

 if (ireq->saved_rx_frame_index != SCU_INVALID_FRAME_INDEX)
  sci_controller_release_frame(ihost,
        ireq->saved_rx_frame_index);


 sci_change_state(&ireq->sm, SCI_REQ_FINAL);
 return SCI_SUCCESS;
}
