
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct qeth_cmd_buffer {int data; } ;
struct TYPE_2__ {int cm_connection_r; } ;
struct qeth_card {TYPE_1__ token; } ;


 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CM_SETUP_RESP_DEST_ADDR (int ) ;
 int QETH_MPC_TOKEN_LENGTH ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static int qeth_cm_setup_cb(struct qeth_card *card, struct qeth_reply *reply,
  unsigned long data)
{
 struct qeth_cmd_buffer *iob;

 QETH_CARD_TEXT(card, 2, "cmsetpcb");

 iob = (struct qeth_cmd_buffer *) data;
 memcpy(&card->token.cm_connection_r,
        QETH_CM_SETUP_RESP_DEST_ADDR(iob->data),
        QETH_MPC_TOKEN_LENGTH);
 return 0;
}
