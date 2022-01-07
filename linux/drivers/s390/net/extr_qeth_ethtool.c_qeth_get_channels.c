
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int no_out_queues; } ;
struct qeth_card {TYPE_1__ qdio; } ;
struct net_device {int real_num_tx_queues; int real_num_rx_queues; int num_rx_queues; struct qeth_card* ml_priv; } ;
struct ethtool_channels {scalar_t__ combined_count; scalar_t__ other_count; int tx_count; int rx_count; scalar_t__ max_combined; scalar_t__ max_other; int max_tx; int max_rx; } ;



__attribute__((used)) static void qeth_get_channels(struct net_device *dev,
         struct ethtool_channels *channels)
{
 struct qeth_card *card = dev->ml_priv;

 channels->max_rx = dev->num_rx_queues;
 channels->max_tx = card->qdio.no_out_queues;
 channels->max_other = 0;
 channels->max_combined = 0;
 channels->rx_count = dev->real_num_rx_queues;
 channels->tx_count = dev->real_num_tx_queues;
 channels->other_count = 0;
 channels->combined_count = 0;
}
