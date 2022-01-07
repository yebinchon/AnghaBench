
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int callback; int data; } ;
struct qeth_channel {int state; } ;
struct qeth_card {struct qeth_channel read; } ;


 int CH_STATE_UP ;
 int ENOMEM ;
 int IDX_ACTIVATE_READ ;
 int IDX_ACTIVATE_SIZE ;
 int QETH_BUFSIZE ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_TIMEOUT ;
 int memcpy (int ,int ,int ) ;
 struct qeth_cmd_buffer* qeth_alloc_cmd (struct qeth_channel*,int ,int,int ) ;
 int qeth_idx_activate_read_channel_cb ;
 int qeth_idx_setup_activate_cmd (struct qeth_card*,struct qeth_cmd_buffer*) ;
 int qeth_send_control_data (struct qeth_card*,struct qeth_cmd_buffer*,int *,int *) ;

__attribute__((used)) static int qeth_idx_activate_read_channel(struct qeth_card *card)
{
 struct qeth_channel *channel = &card->read;
 struct qeth_cmd_buffer *iob;
 int rc;

 QETH_CARD_TEXT(card, 2, "idxread");

 iob = qeth_alloc_cmd(channel, QETH_BUFSIZE, 2, QETH_TIMEOUT);
 if (!iob)
  return -ENOMEM;

 memcpy(iob->data, IDX_ACTIVATE_READ, IDX_ACTIVATE_SIZE);
 qeth_idx_setup_activate_cmd(card, iob);
 iob->callback = qeth_idx_activate_read_channel_cb;

 rc = qeth_send_control_data(card, iob, ((void*)0), ((void*)0));
 if (rc)
  return rc;

 channel->state = CH_STATE_UP;
 return 0;
}
