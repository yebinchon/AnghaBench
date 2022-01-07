
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct qeth_cmd_buffer {int data; int finalize; int length; } ;
struct TYPE_2__ {int ulp_connection_r; } ;
struct qeth_card {TYPE_1__ token; } ;


 int CCW_CMD_WRITE ;
 int * IPA_PDU_HEADER ;
 int IPA_PDU_HEADER_SIZE ;
 int QETH_IPA_CMD_DEST_ADDR (int ) ;
 int QETH_IPA_CMD_PROT_TYPE (int ) ;
 int QETH_IPA_PDU_LEN_PDU1 (int ) ;
 int QETH_IPA_PDU_LEN_PDU2 (int ) ;
 int QETH_IPA_PDU_LEN_PDU3 (int ) ;
 int QETH_IPA_PDU_LEN_TOTAL (int ) ;
 int QETH_MPC_TOKEN_LENGTH ;
 int __ccw_from_cmd (struct qeth_cmd_buffer*) ;
 int memcpy (int ,int *,int) ;
 int qeth_ipa_finalize_cmd ;
 int qeth_mpc_select_prot_type (struct qeth_card*) ;
 int qeth_setup_ccw (int ,int ,int ,int ,int ) ;

void qeth_prepare_ipa_cmd(struct qeth_card *card, struct qeth_cmd_buffer *iob,
     u16 cmd_length)
{
 u8 prot_type = qeth_mpc_select_prot_type(card);
 u16 total_length = iob->length;

 qeth_setup_ccw(__ccw_from_cmd(iob), CCW_CMD_WRITE, 0, total_length,
         iob->data);
 iob->finalize = qeth_ipa_finalize_cmd;

 memcpy(iob->data, IPA_PDU_HEADER, IPA_PDU_HEADER_SIZE);
 memcpy(QETH_IPA_PDU_LEN_TOTAL(iob->data), &total_length, 2);
 memcpy(QETH_IPA_CMD_PROT_TYPE(iob->data), &prot_type, 1);
 memcpy(QETH_IPA_PDU_LEN_PDU1(iob->data), &cmd_length, 2);
 memcpy(QETH_IPA_PDU_LEN_PDU2(iob->data), &cmd_length, 2);
 memcpy(QETH_IPA_CMD_DEST_ADDR(iob->data),
        &card->token.ulp_connection_r, QETH_MPC_TOKEN_LENGTH);
 memcpy(QETH_IPA_PDU_LEN_PDU3(iob->data), &cmd_length, 2);
}
