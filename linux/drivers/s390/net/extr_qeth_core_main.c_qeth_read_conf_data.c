
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_node_desc {int dummy; } ;
struct qeth_cmd_buffer {int data; int length; int callback; } ;
struct qeth_channel {int ccwdev; } ;
struct qeth_card {struct qeth_channel data; } ;
struct ciw {scalar_t__ cmd; int count; } ;


 int CIW_TYPE_RCD ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int QETH_RCD_TIMEOUT ;
 int __ccw_from_cmd (struct qeth_cmd_buffer*) ;
 struct ciw* ccw_device_get_ciw (int ,int ) ;
 struct qeth_cmd_buffer* qeth_alloc_cmd (struct qeth_channel*,int,int,int ) ;
 int qeth_read_conf_data_cb ;
 int qeth_send_control_data (struct qeth_card*,struct qeth_cmd_buffer*,int *,int *) ;
 int qeth_setup_ccw (int ,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int qeth_read_conf_data(struct qeth_card *card)
{
 struct qeth_channel *channel = &card->data;
 struct qeth_cmd_buffer *iob;
 struct ciw *ciw;


 ciw = ccw_device_get_ciw(channel->ccwdev, CIW_TYPE_RCD);
 if (!ciw || ciw->cmd == 0)
  return -EOPNOTSUPP;
 if (ciw->count < sizeof(struct qeth_node_desc))
  return -EINVAL;

 iob = qeth_alloc_cmd(channel, ciw->count, 1, QETH_RCD_TIMEOUT);
 if (!iob)
  return -ENOMEM;

 iob->callback = qeth_read_conf_data_cb;
 qeth_setup_ccw(__ccw_from_cmd(iob), ciw->cmd, 0, iob->length,
         iob->data);

 return qeth_send_control_data(card, iob, ((void*)0), ((void*)0));
}
