
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qeth_card {int active_vlans; } ;
struct net_device {struct qeth_card* ml_priv; } ;
typedef int __be16 ;


 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int ) ;
 int clear_bit (int ,int ) ;
 int qeth_l3_set_rx_mode (struct net_device*) ;

__attribute__((used)) static int qeth_l3_vlan_rx_kill_vid(struct net_device *dev,
        __be16 proto, u16 vid)
{
 struct qeth_card *card = dev->ml_priv;

 QETH_CARD_TEXT_(card, 4, "kid:%d", vid);

 clear_bit(vid, card->active_vlans);
 qeth_l3_set_rx_mode(dev);
 return 0;
}
