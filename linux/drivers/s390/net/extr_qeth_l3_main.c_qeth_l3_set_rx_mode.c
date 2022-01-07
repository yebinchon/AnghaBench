
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int rx_mode_work; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void qeth_l3_set_rx_mode(struct net_device *dev)
{
 struct qeth_card *card = dev->ml_priv;

 schedule_work(&card->rx_mode_work);
}
