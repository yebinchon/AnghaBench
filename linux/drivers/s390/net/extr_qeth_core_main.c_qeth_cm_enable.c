
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_cmd_buffer {int data; } ;
struct TYPE_2__ {int cm_filter_w; int issuer_rm_r; } ;
struct qeth_card {TYPE_1__ token; } ;


 int CM_ENABLE ;
 int CM_ENABLE_SIZE ;
 int ENOMEM ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CM_ENABLE_FILTER_TOKEN (int ) ;
 int QETH_CM_ENABLE_ISSUER_RM_TOKEN (int ) ;
 int QETH_MPC_TOKEN_LENGTH ;
 int memcpy (int ,int *,int ) ;
 int qeth_cm_enable_cb ;
 struct qeth_cmd_buffer* qeth_mpc_alloc_cmd (struct qeth_card*,int ,int ) ;
 int qeth_send_control_data (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;

__attribute__((used)) static int qeth_cm_enable(struct qeth_card *card)
{
 struct qeth_cmd_buffer *iob;

 QETH_CARD_TEXT(card, 2, "cmenable");

 iob = qeth_mpc_alloc_cmd(card, CM_ENABLE, CM_ENABLE_SIZE);
 if (!iob)
  return -ENOMEM;

 memcpy(QETH_CM_ENABLE_ISSUER_RM_TOKEN(iob->data),
        &card->token.issuer_rm_r, QETH_MPC_TOKEN_LENGTH);
 memcpy(QETH_CM_ENABLE_FILTER_TOKEN(iob->data),
        &card->token.cm_filter_w, QETH_MPC_TOKEN_LENGTH);

 return qeth_send_control_data(card, iob, qeth_cm_enable_cb, ((void*)0));
}
