
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qeth_card {int dummy; } ;
struct net_device {struct qeth_card* ml_priv; } ;
typedef int __be16 ;


 int IPA_CMD_DELVLAN ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int ) ;
 int qeth_l2_send_setdelvlan (struct qeth_card*,int ,int ) ;

__attribute__((used)) static int qeth_l2_vlan_rx_kill_vid(struct net_device *dev,
        __be16 proto, u16 vid)
{
 struct qeth_card *card = dev->ml_priv;

 QETH_CARD_TEXT_(card, 4, "kid:%d", vid);
 if (!vid)
  return 0;

 return qeth_l2_send_setdelvlan(card, vid, IPA_CMD_DELVLAN);
}
