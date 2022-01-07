
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int priority; } ;






 int TX_DESC_QSEL_BEACON ;
 int TX_DESC_QSEL_H2C ;
 int TX_DESC_QSEL_HIGH ;
 int TX_DESC_QSEL_MGMT ;

__attribute__((used)) static u8 rtw_pci_get_tx_qsel(struct sk_buff *skb, u8 queue)
{
 switch (queue) {
 case 131:
  return TX_DESC_QSEL_BEACON;
 case 130:
  return TX_DESC_QSEL_H2C;
 case 128:
  return TX_DESC_QSEL_MGMT;
 case 129:
  return TX_DESC_QSEL_HIGH;
 default:
  return skb->priority;
 }
}
