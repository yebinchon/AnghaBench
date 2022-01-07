
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int IPA_CMD_ASS_STOP ;
 int IPA_OUTBOUND_TSO ;
 int qeth_send_simple_setassparms_prot (struct qeth_card*,int ,int ,int *,int) ;

__attribute__((used)) static int qeth_set_tso_off(struct qeth_card *card,
       enum qeth_prot_versions prot)
{
 return qeth_send_simple_setassparms_prot(card, IPA_OUTBOUND_TSO,
       IPA_CMD_ASS_STOP, ((void*)0), prot);
}
