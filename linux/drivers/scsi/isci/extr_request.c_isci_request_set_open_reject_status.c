
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int open_rej_reason; } ;
struct sas_task {TYPE_1__ task_status; } ;
struct isci_request {int flags; } ;
typedef enum service_response { ____Placeholder_service_response } service_response ;
typedef enum sas_open_rej_reason { ____Placeholder_sas_open_rej_reason } sas_open_rej_reason ;
typedef enum exec_status { ____Placeholder_exec_status } exec_status ;


 int IREQ_COMPLETE_IN_TARGET ;
 int SAS_OPEN_REJECT ;
 int SAS_TASK_UNDELIVERED ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void isci_request_set_open_reject_status(
 struct isci_request *request,
 struct sas_task *task,
 enum service_response *response_ptr,
 enum exec_status *status_ptr,
 enum sas_open_rej_reason open_rej_reason)
{

 set_bit(IREQ_COMPLETE_IN_TARGET, &request->flags);
 *response_ptr = SAS_TASK_UNDELIVERED;
 *status_ptr = SAS_OPEN_REJECT;
 task->task_status.open_rej_reason = open_rej_reason;
}
