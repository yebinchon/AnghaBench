
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct TYPE_2__ {int notifyresult_handle; int notify_handle; } ;
struct uiscmdrsp {TYPE_1__ scsitaskmgmt; } ;
struct idr {int dummy; } ;


 void* idr_find (struct idr*,int ) ;
 int pr_debug (char*,int) ;
 int pr_err (char*) ;
 scalar_t__ unlikely (int) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void complete_taskmgmt_command(struct idr *idrtable,
          struct uiscmdrsp *cmdrsp, int result)
{
 wait_queue_head_t *wq =
  idr_find(idrtable, cmdrsp->scsitaskmgmt.notify_handle);
 int *scsi_result_ptr =
  idr_find(idrtable, cmdrsp->scsitaskmgmt.notifyresult_handle);
 if (unlikely(!(wq && scsi_result_ptr))) {
  pr_err("visorhba: no completion context; cmd will time out\n");
  return;
 }




 pr_debug("visorhba: notifying initiator with result=0x%x\n", result);
 *scsi_result_ptr = result;
 wake_up_all(wq);
}
