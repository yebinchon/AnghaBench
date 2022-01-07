
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qeth_card {int dummy; } ;


 scalar_t__ IS_LAYER2 (struct qeth_card*) ;
 scalar_t__ IS_OSN (struct qeth_card*) ;
 int QETH_PROT_LAYER2 ;
 int QETH_PROT_OSN2 ;
 int QETH_PROT_TCPIP ;

__attribute__((used)) static u8 qeth_mpc_select_prot_type(struct qeth_card *card)
{
 if (IS_OSN(card))
  return QETH_PROT_OSN2;
 return IS_LAYER2(card) ? QETH_PROT_LAYER2 : QETH_PROT_TCPIP;
}
