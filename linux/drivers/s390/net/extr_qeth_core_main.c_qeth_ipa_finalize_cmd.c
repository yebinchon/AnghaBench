
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_cmd_buffer {int dummy; } ;
struct TYPE_5__ {int ipa; } ;
struct qeth_card {TYPE_2__ seqno; } ;
struct TYPE_4__ {scalar_t__ seqno; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;


 TYPE_3__* __ipa_cmd (struct qeth_cmd_buffer*) ;
 int qeth_mpc_finalize_cmd (struct qeth_card*,struct qeth_cmd_buffer*) ;

__attribute__((used)) static void qeth_ipa_finalize_cmd(struct qeth_card *card,
      struct qeth_cmd_buffer *iob)
{
 qeth_mpc_finalize_cmd(card, iob);


 __ipa_cmd(iob)->hdr.seqno = card->seqno.ipa++;
}
