
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_cmd_buffer {int callback; int data; } ;
struct TYPE_2__ {int pdu_hdr_ack; int pdu_hdr; } ;
struct qeth_card {TYPE_1__ seqno; } ;


 int QETH_PDU_HEADER_ACK_SEQ_NO (int ) ;
 int QETH_PDU_HEADER_SEQ_NO (int ) ;
 int QETH_SEQ_NO_LENGTH ;
 int memcpy (int ,int *,int ) ;
 int qeth_idx_finalize_cmd (struct qeth_card*,struct qeth_cmd_buffer*) ;
 int qeth_release_buffer_cb ;

__attribute__((used)) static void qeth_mpc_finalize_cmd(struct qeth_card *card,
      struct qeth_cmd_buffer *iob)
{
 qeth_idx_finalize_cmd(card, iob);

 memcpy(QETH_PDU_HEADER_SEQ_NO(iob->data),
        &card->seqno.pdu_hdr, QETH_SEQ_NO_LENGTH);
 card->seqno.pdu_hdr++;
 memcpy(QETH_PDU_HEADER_ACK_SEQ_NO(iob->data),
        &card->seqno.pdu_hdr_ack, QETH_SEQ_NO_LENGTH);

 iob->callback = qeth_release_buffer_cb;
}
