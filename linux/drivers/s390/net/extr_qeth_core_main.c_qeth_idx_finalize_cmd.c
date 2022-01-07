
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_cmd_buffer {int * channel; int data; } ;
struct TYPE_2__ {int trans_hdr; } ;
struct qeth_card {TYPE_1__ seqno; int write; } ;


 int QETH_SEQ_NO_LENGTH ;
 int QETH_TRANSPORT_HEADER_SEQ_NO (int ) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static void qeth_idx_finalize_cmd(struct qeth_card *card,
      struct qeth_cmd_buffer *iob)
{
 memcpy(QETH_TRANSPORT_HEADER_SEQ_NO(iob->data), &card->seqno.trans_hdr,
        QETH_SEQ_NO_LENGTH);
 if (iob->channel == &card->write)
  card->seqno.trans_hdr++;
}
