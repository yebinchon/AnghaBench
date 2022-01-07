
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qeth_cmd_buffer {int callback; } ;
struct qeth_card {int write; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IPA_PDU_HEADER_SIZE ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_IPA_TIMEOUT ;
 int __ipa_cmd (struct qeth_cmd_buffer*) ;
 int memcpy (int ,void*,int) ;
 struct qeth_cmd_buffer* qeth_alloc_cmd (int *,scalar_t__,int,int ) ;
 int qeth_card_hw_is_reachable (struct qeth_card*) ;
 int qeth_osn_assist_cb ;
 int qeth_prepare_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int *,int *) ;

int qeth_osn_assist(struct net_device *dev, void *data, int data_len)
{
 struct qeth_cmd_buffer *iob;
 struct qeth_card *card;

 if (data_len < 0)
  return -EINVAL;
 if (!dev)
  return -ENODEV;
 card = dev->ml_priv;
 if (!card)
  return -ENODEV;
 QETH_CARD_TEXT(card, 2, "osnsdmc");
 if (!qeth_card_hw_is_reachable(card))
  return -ENODEV;

 iob = qeth_alloc_cmd(&card->write, IPA_PDU_HEADER_SIZE + data_len, 1,
        QETH_IPA_TIMEOUT);
 if (!iob)
  return -ENOMEM;

 qeth_prepare_ipa_cmd(card, iob, (u16) data_len);
 memcpy(__ipa_cmd(iob), data, data_len);
 iob->callback = qeth_osn_assist_cb;
 return qeth_send_ipa_cmd(card, iob, ((void*)0), ((void*)0));
}
