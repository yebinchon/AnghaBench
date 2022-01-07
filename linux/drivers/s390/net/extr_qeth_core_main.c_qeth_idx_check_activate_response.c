
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_cmd_buffer {int data; } ;
struct qeth_channel {TYPE_1__* ccwdev; } ;
struct qeth_card {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int CCW_DEVID (TYPE_1__*) ;
 int EBUSY ;
 int EIO ;
 int EPERM ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int QETH_DBF_MESSAGE (int,char*,int ) ;
 int QETH_IDX_ACT_CAUSE_CODE (int ) ;



 scalar_t__ QETH_IS_IDX_ACT_POS_REPLY (int ) ;
 int dev_err (int *,char*) ;
 int qeth_check_idx_response (struct qeth_card*,int ) ;

__attribute__((used)) static int qeth_idx_check_activate_response(struct qeth_card *card,
         struct qeth_channel *channel,
         struct qeth_cmd_buffer *iob)
{
 int rc;

 rc = qeth_check_idx_response(card, iob->data);
 if (rc)
  return rc;

 if (QETH_IS_IDX_ACT_POS_REPLY(iob->data))
  return 0;


 QETH_CARD_TEXT_(card, 2, "idxneg%c",
   QETH_IDX_ACT_CAUSE_CODE(iob->data));

 switch (QETH_IDX_ACT_CAUSE_CODE(iob->data)) {
 case 128:
  dev_err(&channel->ccwdev->dev,
   "The adapter is used exclusively by another host\n");
  return -EBUSY;
 case 130:
 case 129:
  dev_err(&channel->ccwdev->dev,
   "Setting the device online failed because of insufficient authorization\n");
  return -EPERM;
 default:
  QETH_DBF_MESSAGE(2, "IDX_ACTIVATE on channel %x: negative reply\n",
     CCW_DEVID(channel->ccwdev));
  return -EIO;
 }
}
