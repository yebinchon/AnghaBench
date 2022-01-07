
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct slim_val_inf {int start_offset; int num_bytes; } ;
struct slim_msg_txn {int ec; scalar_t__ rl; int mc; int mt; } ;
struct slim_device {struct slim_controller* ctrl; int laddr; } ;
struct slim_controller {int dev; } ;


 int DEFINE_SLIM_LDEST_TXN (struct slim_msg_txn,int ,int,int ,struct slim_val_inf*) ;
 int EINVAL ;




 int dev_dbg (int ,char*,int,int ,int ,int) ;
 int slim_do_transfer (struct slim_controller*,struct slim_msg_txn*) ;
 int slim_slicesize (int ) ;
 scalar_t__ slim_tid_txn (int ,int ) ;
 int slim_val_inf_sanity (struct slim_controller*,struct slim_val_inf*,int ) ;
 struct slim_msg_txn txn_stack ;

int slim_xfer_msg(struct slim_device *sbdev, struct slim_val_inf *msg,
    u8 mc)
{
 DEFINE_SLIM_LDEST_TXN(txn_stack, mc, 6, sbdev->laddr, msg);
 struct slim_msg_txn *txn = &txn_stack;
 struct slim_controller *ctrl = sbdev->ctrl;
 int ret;
 u16 sl;

 if (!ctrl)
  return -EINVAL;

 ret = slim_val_inf_sanity(ctrl, msg, mc);
 if (ret)
  return ret;

 sl = slim_slicesize(msg->num_bytes);

 dev_dbg(ctrl->dev, "SB xfer msg:os:%x, len:%d, MC:%x, sl:%x\n",
  msg->start_offset, msg->num_bytes, mc, sl);

 txn->ec = ((sl | (1 << 3)) | ((msg->start_offset & 0xFFF) << 4));

 switch (mc) {
 case 129:
 case 131:
 case 128:
 case 130:
  txn->rl += msg->num_bytes;
 default:
  break;
 }

 if (slim_tid_txn(txn->mt, txn->mc))
  txn->rl++;

 return slim_do_transfer(ctrl, txn);
}
