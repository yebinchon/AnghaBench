
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtnl_link_stats64 {int tx_dropped; int tx_errors; int tx_bytes; int tx_packets; int multicast; int rx_dropped; int rx_errors; int rx_bytes; int rx_packets; } ;
struct TYPE_6__ {scalar_t__ tx_dropped; scalar_t__ tx_errors; scalar_t__ tx_bytes; scalar_t__ tx_packets; } ;
struct qeth_qdio_out_q {TYPE_3__ stats; } ;
struct TYPE_5__ {unsigned int no_out_queues; struct qeth_qdio_out_q** out_qs; } ;
struct TYPE_4__ {int rx_multicast; int rx_dropped; int rx_errors; int rx_bytes; int rx_packets; } ;
struct qeth_card {TYPE_2__ qdio; TYPE_1__ stats; } ;
struct net_device {struct qeth_card* ml_priv; } ;


 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;

void qeth_get_stats64(struct net_device *dev, struct rtnl_link_stats64 *stats)
{
 struct qeth_card *card = dev->ml_priv;
 struct qeth_qdio_out_q *queue;
 unsigned int i;

 QETH_CARD_TEXT(card, 5, "getstat");

 stats->rx_packets = card->stats.rx_packets;
 stats->rx_bytes = card->stats.rx_bytes;
 stats->rx_errors = card->stats.rx_errors;
 stats->rx_dropped = card->stats.rx_dropped;
 stats->multicast = card->stats.rx_multicast;

 for (i = 0; i < card->qdio.no_out_queues; i++) {
  queue = card->qdio.out_qs[i];

  stats->tx_packets += queue->stats.tx_packets;
  stats->tx_bytes += queue->stats.tx_bytes;
  stats->tx_errors += queue->stats.tx_errors;
  stats->tx_dropped += queue->stats.tx_dropped;
 }
}
