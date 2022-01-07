
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
struct carrier_info {int dummy; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int IPA_SETADP_QUERY_CARD_INFO ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int qeth_adp_supported (struct qeth_card*,int ) ;
 struct qeth_cmd_buffer* qeth_get_adapter_cmd (struct qeth_card*,int ,int ) ;
 int qeth_query_card_info_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,void*) ;

int qeth_query_card_info(struct qeth_card *card,
    struct carrier_info *carrier_info)
{
 struct qeth_cmd_buffer *iob;

 QETH_CARD_TEXT(card, 2, "qcrdinfo");
 if (!qeth_adp_supported(card, IPA_SETADP_QUERY_CARD_INFO))
  return -EOPNOTSUPP;
 iob = qeth_get_adapter_cmd(card, IPA_SETADP_QUERY_CARD_INFO, 0);
 if (!iob)
  return -ENOMEM;
 return qeth_send_ipa_cmd(card, iob, qeth_query_card_info_cb,
     (void *)carrier_info);
}
