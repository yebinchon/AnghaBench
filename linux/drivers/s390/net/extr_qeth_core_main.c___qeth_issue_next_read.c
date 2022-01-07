
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int callback; int data; int length; struct qeth_channel* channel; } ;
struct qeth_channel {scalar_t__ state; int irq_pending; int ccwdev; } ;
struct qeth_card {int read_or_write_problem; int wait_q; struct qeth_cmd_buffer* read_cmd; } ;
struct ccw1 {int dummy; } ;
typedef int addr_t ;


 int CARD_DEVID (struct qeth_card*) ;
 int CCW_CMD_READ ;
 scalar_t__ CH_STATE_UP ;
 int EIO ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DBF_MESSAGE (int,char*,int,int ) ;
 struct ccw1* __ccw_from_cmd (struct qeth_cmd_buffer*) ;
 int atomic_set (int *,int ) ;
 int ccw_device_start (int ,struct ccw1*,int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int qeth_get_cmd (struct qeth_cmd_buffer*) ;
 int qeth_issue_next_read_cb ;
 int qeth_put_cmd (struct qeth_cmd_buffer*) ;
 int qeth_schedule_recovery (struct qeth_card*) ;
 int qeth_setup_ccw (struct ccw1*,int ,int ,int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int __qeth_issue_next_read(struct qeth_card *card)
{
 struct qeth_cmd_buffer *iob = card->read_cmd;
 struct qeth_channel *channel = iob->channel;
 struct ccw1 *ccw = __ccw_from_cmd(iob);
 int rc;

 QETH_CARD_TEXT(card, 5, "issnxrd");
 if (channel->state != CH_STATE_UP)
  return -EIO;

 memset(iob->data, 0, iob->length);
 qeth_setup_ccw(ccw, CCW_CMD_READ, 0, iob->length, iob->data);
 iob->callback = qeth_issue_next_read_cb;

 qeth_get_cmd(iob);

 QETH_CARD_TEXT(card, 6, "noirqpnd");
 rc = ccw_device_start(channel->ccwdev, ccw, (addr_t) iob, 0, 0);
 if (rc) {
  QETH_DBF_MESSAGE(2, "error %i on device %x when starting next read ccw!\n",
     rc, CARD_DEVID(card));
  atomic_set(&channel->irq_pending, 0);
  qeth_put_cmd(iob);
  card->read_or_write_problem = 1;
  qeth_schedule_recovery(card);
  wake_up(&card->wait_q);
 }
 return rc;
}
