
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qeth_cmd_buffer {int data; struct qeth_channel* channel; } ;
struct qeth_channel {int ccwdev; } ;
struct TYPE_2__ {int func_level; } ;
struct qeth_card {TYPE_1__ info; } ;


 int CCW_DEVID (int ) ;
 int EINVAL ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DBF_MESSAGE (int,char*,int ,int ,int) ;
 int QETH_IDX_ACT_FUNC_LEVEL (int ) ;
 int memcpy (int*,int ,int) ;
 int qeth_idx_check_activate_response (struct qeth_card*,struct qeth_channel*,struct qeth_cmd_buffer*) ;
 int qeth_notify_cmd (struct qeth_cmd_buffer*,int) ;
 int qeth_peer_func_level (int ) ;
 int qeth_put_cmd (struct qeth_cmd_buffer*) ;

__attribute__((used)) static void qeth_idx_activate_write_channel_cb(struct qeth_card *card,
            struct qeth_cmd_buffer *iob,
            unsigned int data_length)
{
 struct qeth_channel *channel = iob->channel;
 u16 peer_level;
 int rc;

 QETH_CARD_TEXT(card, 2, "idxwrcb");

 rc = qeth_idx_check_activate_response(card, channel, iob);
 if (rc)
  goto out;

 memcpy(&peer_level, QETH_IDX_ACT_FUNC_LEVEL(iob->data), 2);
 if ((peer_level & ~0x0100) !=
     qeth_peer_func_level(card->info.func_level)) {
  QETH_DBF_MESSAGE(2, "IDX_ACTIVATE on channel %x: function level mismatch (sent: %#x, received: %#x)\n",
     CCW_DEVID(channel->ccwdev),
     card->info.func_level, peer_level);
  rc = -EINVAL;
 }

out:
 qeth_notify_cmd(iob, rc);
 qeth_put_cmd(iob);
}
