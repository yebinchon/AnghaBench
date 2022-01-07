
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_switch_info {int dummy; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dev; } ;


 int ENOMEDIUM ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int IPA_SETADP_QUERY_SWITCH_ATTRIBUTES ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int netif_carrier_ok (int ) ;
 int qeth_adp_supported (struct qeth_card*,int ) ;
 struct qeth_cmd_buffer* qeth_get_adapter_cmd (struct qeth_card*,int ,int ) ;
 int qeth_query_switch_attributes_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,struct qeth_switch_info*) ;

int qeth_query_switch_attributes(struct qeth_card *card,
     struct qeth_switch_info *sw_info)
{
 struct qeth_cmd_buffer *iob;

 QETH_CARD_TEXT(card, 2, "qswiattr");
 if (!qeth_adp_supported(card, IPA_SETADP_QUERY_SWITCH_ATTRIBUTES))
  return -EOPNOTSUPP;
 if (!netif_carrier_ok(card->dev))
  return -ENOMEDIUM;
 iob = qeth_get_adapter_cmd(card, IPA_SETADP_QUERY_SWITCH_ATTRIBUTES, 0);
 if (!iob)
  return -ENOMEM;
 return qeth_send_ipa_cmd(card, iob,
    qeth_query_switch_attributes_cb, sw_info);
}
