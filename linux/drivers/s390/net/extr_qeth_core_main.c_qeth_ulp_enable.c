
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct qeth_cmd_buffer {int data; } ;
struct TYPE_4__ {scalar_t__ ulp_filter_w; scalar_t__ cm_connection_r; } ;
struct qeth_card {TYPE_2__ token; TYPE_1__* dev; } ;
struct TYPE_3__ {scalar_t__ dev_port; } ;


 int ENOMEM ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_MPC_TOKEN_LENGTH ;
 int QETH_ULP_ENABLE_DEST_ADDR (int ) ;
 int QETH_ULP_ENABLE_FILTER_TOKEN (int ) ;
 scalar_t__* QETH_ULP_ENABLE_LINKNUM (int ) ;
 int QETH_ULP_ENABLE_PROT_TYPE (int ) ;
 int ULP_ENABLE ;
 int ULP_ENABLE_SIZE ;
 int memcpy (int ,scalar_t__*,int) ;
 struct qeth_cmd_buffer* qeth_mpc_alloc_cmd (struct qeth_card*,int ,int ) ;
 scalar_t__ qeth_mpc_select_prot_type (struct qeth_card*) ;
 int qeth_send_control_data (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;
 int qeth_ulp_enable_cb ;
 int qeth_update_max_mtu (struct qeth_card*,int ) ;

__attribute__((used)) static int qeth_ulp_enable(struct qeth_card *card)
{
 u8 prot_type = qeth_mpc_select_prot_type(card);
 struct qeth_cmd_buffer *iob;
 u16 max_mtu;
 int rc;

 QETH_CARD_TEXT(card, 2, "ulpenabl");

 iob = qeth_mpc_alloc_cmd(card, ULP_ENABLE, ULP_ENABLE_SIZE);
 if (!iob)
  return -ENOMEM;

 *(QETH_ULP_ENABLE_LINKNUM(iob->data)) = (u8) card->dev->dev_port;
 memcpy(QETH_ULP_ENABLE_PROT_TYPE(iob->data), &prot_type, 1);
 memcpy(QETH_ULP_ENABLE_DEST_ADDR(iob->data),
        &card->token.cm_connection_r, QETH_MPC_TOKEN_LENGTH);
 memcpy(QETH_ULP_ENABLE_FILTER_TOKEN(iob->data),
        &card->token.ulp_filter_w, QETH_MPC_TOKEN_LENGTH);
 rc = qeth_send_control_data(card, iob, qeth_ulp_enable_cb, &max_mtu);
 if (rc)
  return rc;
 return qeth_update_max_mtu(card, max_mtu);
}
