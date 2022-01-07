
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int no_out_queues; } ;
struct qeth_card {TYPE_1__ qdio; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 int CARD_STATS_LEN ;
 int EINVAL ;

 int TXQ_STATS_LEN ;

__attribute__((used)) static int qeth_get_sset_count(struct net_device *dev, int stringset)
{
 struct qeth_card *card = dev->ml_priv;

 switch (stringset) {
 case 128:
  return CARD_STATS_LEN +
         card->qdio.no_out_queues * TXQ_STATS_LEN;
 default:
  return -EINVAL;
 }
}
