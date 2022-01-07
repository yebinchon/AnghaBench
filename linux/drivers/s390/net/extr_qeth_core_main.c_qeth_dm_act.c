
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_cmd_buffer {int data; } ;
struct TYPE_2__ {int ulp_connection_r; int cm_connection_r; } ;
struct qeth_card {TYPE_1__ token; } ;


 int DM_ACT ;
 int DM_ACT_SIZE ;
 int ENOMEM ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DM_ACT_CONNECTION_TOKEN (int ) ;
 int QETH_DM_ACT_DEST_ADDR (int ) ;
 int QETH_MPC_TOKEN_LENGTH ;
 int memcpy (int ,int *,int ) ;
 struct qeth_cmd_buffer* qeth_mpc_alloc_cmd (struct qeth_card*,int ,int ) ;
 int qeth_send_control_data (struct qeth_card*,struct qeth_cmd_buffer*,int *,int *) ;

__attribute__((used)) static int qeth_dm_act(struct qeth_card *card)
{
 struct qeth_cmd_buffer *iob;

 QETH_CARD_TEXT(card, 2, "dmact");

 iob = qeth_mpc_alloc_cmd(card, DM_ACT, DM_ACT_SIZE);
 if (!iob)
  return -ENOMEM;

 memcpy(QETH_DM_ACT_DEST_ADDR(iob->data),
        &card->token.cm_connection_r, QETH_MPC_TOKEN_LENGTH);
 memcpy(QETH_DM_ACT_CONNECTION_TOKEN(iob->data),
        &card->token.ulp_connection_r, QETH_MPC_TOKEN_LENGTH);
 return qeth_send_control_data(card, iob, ((void*)0), ((void*)0));
}
