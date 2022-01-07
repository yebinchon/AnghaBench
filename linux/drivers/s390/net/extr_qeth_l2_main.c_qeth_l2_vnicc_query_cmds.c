
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
struct TYPE_11__ {int * sup_cmds; } ;
struct _qeth_l2_vnicc_request_cbctl {TYPE_5__ result; } ;
struct TYPE_7__ {int vnic_char; } ;
struct TYPE_8__ {TYPE_1__ query_cmds; } ;
struct TYPE_9__ {TYPE_2__ data; } ;
struct TYPE_10__ {TYPE_3__ vnicc; } ;
struct TYPE_12__ {TYPE_4__ data; } ;


 int ENOMEM ;
 int IPA_VNICC_QUERY_CMDS ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int VNICC_DATA_SIZEOF (int ) ;
 TYPE_6__* __ipa_cmd (struct qeth_cmd_buffer*) ;
 struct qeth_cmd_buffer* qeth_l2_vnicc_build_cmd (struct qeth_card*,int ,int ) ;
 int qeth_l2_vnicc_request_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,struct _qeth_l2_vnicc_request_cbctl*) ;
 int query_cmds ;

__attribute__((used)) static int qeth_l2_vnicc_query_cmds(struct qeth_card *card, u32 vnic_char,
        u32 *sup_cmds)
{
 struct _qeth_l2_vnicc_request_cbctl cbctl;
 struct qeth_cmd_buffer *iob;

 QETH_CARD_TEXT(card, 2, "vniccqcm");
 iob = qeth_l2_vnicc_build_cmd(card, IPA_VNICC_QUERY_CMDS,
          VNICC_DATA_SIZEOF(query_cmds));
 if (!iob)
  return -ENOMEM;

 __ipa_cmd(iob)->data.vnicc.data.query_cmds.vnic_char = vnic_char;


 cbctl.result.sup_cmds = sup_cmds;

 return qeth_send_ipa_cmd(card, iob, qeth_l2_vnicc_request_cb, &cbctl);
}
