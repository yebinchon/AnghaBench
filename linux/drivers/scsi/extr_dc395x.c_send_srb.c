
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ScsiReqBlk {int list; struct DeviceCtlBlk* dcb; } ;
struct DeviceCtlBlk {scalar_t__ max_command; int srb_waiting_list; int srb_going_list; } ;
struct AdapterCtlBlk {int acb_flag; scalar_t__ active_dcb; } ;


 int HZ ;
 int RESET_DETECT ;
 int RESET_DEV ;
 int RESET_DONE ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_size (int *) ;
 int start_scsi (struct AdapterCtlBlk*,struct DeviceCtlBlk*,struct ScsiReqBlk*) ;
 int waiting_process_next (struct AdapterCtlBlk*) ;
 int waiting_set_timer (struct AdapterCtlBlk*,int) ;

__attribute__((used)) static void send_srb(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb)
{
 struct DeviceCtlBlk *dcb = srb->dcb;

 if (dcb->max_command <= list_size(&dcb->srb_going_list) ||
     acb->active_dcb ||
     (acb->acb_flag & (RESET_DETECT + RESET_DONE + RESET_DEV))) {
  list_add_tail(&srb->list, &dcb->srb_waiting_list);
  waiting_process_next(acb);
  return;
 }

 if (!start_scsi(acb, dcb, srb)) {
  list_add_tail(&srb->list, &dcb->srb_going_list);
 } else {
  list_add(&srb->list, &dcb->srb_waiting_list);
  waiting_set_timer(acb, HZ / 50);
 }
}
