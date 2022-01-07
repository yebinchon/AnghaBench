
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qeth_card {int active_vlans; } ;
struct net_device {struct qeth_card* ml_priv; } ;
typedef int __be16 ;


 int set_bit (int ,int ) ;

__attribute__((used)) static int qeth_l3_vlan_rx_add_vid(struct net_device *dev,
       __be16 proto, u16 vid)
{
 struct qeth_card *card = dev->ml_priv;

 set_bit(vid, card->active_vlans);
 return 0;
}
