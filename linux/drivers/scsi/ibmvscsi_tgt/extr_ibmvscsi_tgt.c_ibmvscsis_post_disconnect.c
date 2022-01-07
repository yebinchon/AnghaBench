
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct scsi_info {int flags; int state; int new_state; int dev; int proc_work; int work_q; } ;



 int DISCONNECT_SCHEDULED ;



 int INIT_WORK (int *,int ) ;

 int SCHEDULE_DISCONNECT ;






 int dev_dbg (int *,char*,int,int,...) ;
 int dev_err (int *,char*,int) ;
 int ibmvscsis_disconnect ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void ibmvscsis_post_disconnect(struct scsi_info *vscsi, uint new_state,
          uint flag_bits)
{
 uint state;


 switch (new_state) {
 case 132:
 case 137:
 case 135:
 case 128:
  break;

 default:
  dev_err(&vscsi->dev, "post_disconnect: Invalid new state %d\n",
   new_state);
  return;
 }

 vscsi->flags |= flag_bits;

 dev_dbg(&vscsi->dev, "post_disconnect: new_state 0x%x, flag_bits 0x%x, vscsi->flags 0x%x, state %hx\n",
  new_state, flag_bits, vscsi->flags, vscsi->state);

 if (!(vscsi->flags & (DISCONNECT_SCHEDULED | SCHEDULE_DISCONNECT))) {
  vscsi->flags |= SCHEDULE_DISCONNECT;
  vscsi->new_state = new_state;

  INIT_WORK(&vscsi->proc_work, ibmvscsis_disconnect);
  (void)queue_work(vscsi->work_q, &vscsi->proc_work);
 } else {
  if (vscsi->new_state)
   state = vscsi->new_state;
  else
   state = vscsi->state;

  switch (state) {
  case 134:
  case 132:
   break;

  case 136:
  case 137:
  case 131:
   if (new_state == 132)
    vscsi->new_state = new_state;
   break;

  case 135:
   switch (new_state) {
   case 132:
   case 137:
    vscsi->new_state = new_state;
    break;
   default:
    break;
   }
   break;

  case 129:
  case 128:
  case 130:
  case 138:
  case 133:
   vscsi->new_state = new_state;
   break;

  default:
   break;
  }
 }

 dev_dbg(&vscsi->dev, "Leaving post_disconnect: flags 0x%x, new_state 0x%x\n",
  vscsi->flags, vscsi->new_state);
}
