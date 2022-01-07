
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {unsigned int no_out_queues; TYPE_1__** out_qs; } ;
struct qeth_card {TYPE_2__ qdio; int stats; } ;
struct net_device {struct qeth_card* ml_priv; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_3__ {int stats; } ;


 int CARD_STATS_LEN ;
 int TXQ_STATS_LEN ;
 int card_stats ;
 int qeth_add_stat_data (int **,int *,int ,int ) ;
 int txq_stats ;

__attribute__((used)) static void qeth_get_ethtool_stats(struct net_device *dev,
       struct ethtool_stats *stats, u64 *data)
{
 struct qeth_card *card = dev->ml_priv;
 unsigned int i;

 qeth_add_stat_data(&data, &card->stats, card_stats, CARD_STATS_LEN);
 for (i = 0; i < card->qdio.no_out_queues; i++)
  qeth_add_stat_data(&data, &card->qdio.out_qs[i]->stats,
       txq_stats, TXQ_STATS_LEN);
}
