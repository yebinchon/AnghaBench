
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dev; } ;
struct in_device {int dummy; } ;


 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 struct in_device* __in_dev_get_rcu (int ) ;
 int qeth_l3_add_mc_to_hash (struct qeth_card*,struct in_device*) ;
 int qeth_l3_add_vlan_mc (struct qeth_card*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void qeth_l3_add_multicast_ipv4(struct qeth_card *card)
{
 struct in_device *in4_dev;

 QETH_CARD_TEXT(card, 4, "chkmcv4");

 rcu_read_lock();
 in4_dev = __in_dev_get_rcu(card->dev);
 if (in4_dev == ((void*)0))
  goto unlock;
 qeth_l3_add_mc_to_hash(card, in4_dev);
 qeth_l3_add_vlan_mc(card);
unlock:
 rcu_read_unlock();
}
