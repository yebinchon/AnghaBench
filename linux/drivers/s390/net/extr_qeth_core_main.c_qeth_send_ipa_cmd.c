
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {scalar_t__ read_or_write_problem; } ;


 int EIO ;
 int ETIME ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int qeth_clear_ipacmd_list (struct qeth_card*) ;
 int qeth_put_cmd (struct qeth_cmd_buffer*) ;
 int qeth_schedule_recovery (struct qeth_card*) ;
 int qeth_send_control_data (struct qeth_card*,struct qeth_cmd_buffer*,int (*) (struct qeth_card*,struct qeth_reply*,unsigned long),void*) ;
 int qeth_send_ipa_cmd_cb (struct qeth_card*,struct qeth_reply*,unsigned long) ;

int qeth_send_ipa_cmd(struct qeth_card *card, struct qeth_cmd_buffer *iob,
  int (*reply_cb)(struct qeth_card *, struct qeth_reply*,
   unsigned long),
  void *reply_param)
{
 int rc;

 QETH_CARD_TEXT(card, 4, "sendipa");

 if (card->read_or_write_problem) {
  qeth_put_cmd(iob);
  return -EIO;
 }

 if (reply_cb == ((void*)0))
  reply_cb = qeth_send_ipa_cmd_cb;
 rc = qeth_send_control_data(card, iob, reply_cb, reply_param);
 if (rc == -ETIME) {
  qeth_clear_ipacmd_list(card);
  qeth_schedule_recovery(card);
 }
 return rc;
}
