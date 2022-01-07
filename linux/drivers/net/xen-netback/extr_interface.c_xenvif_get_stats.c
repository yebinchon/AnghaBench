
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
struct TYPE_3__ {scalar_t__ tx_packets; scalar_t__ tx_bytes; scalar_t__ rx_packets; scalar_t__ rx_bytes; } ;
struct xenvif_queue {TYPE_1__ stats; } ;
struct xenvif {TYPE_2__* dev; struct xenvif_queue* queues; int num_queues; } ;
struct net_device_stats {void* tx_packets; void* tx_bytes; void* rx_packets; void* rx_bytes; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct net_device_stats stats; } ;


 unsigned int READ_ONCE (int ) ;
 struct xenvif* netdev_priv (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct net_device_stats *xenvif_get_stats(struct net_device *dev)
{
 struct xenvif *vif = netdev_priv(dev);
 struct xenvif_queue *queue = ((void*)0);
 unsigned int num_queues;
 u64 rx_bytes = 0;
 u64 rx_packets = 0;
 u64 tx_bytes = 0;
 u64 tx_packets = 0;
 unsigned int index;

 rcu_read_lock();
 num_queues = READ_ONCE(vif->num_queues);


 for (index = 0; index < num_queues; ++index) {
  queue = &vif->queues[index];
  rx_bytes += queue->stats.rx_bytes;
  rx_packets += queue->stats.rx_packets;
  tx_bytes += queue->stats.tx_bytes;
  tx_packets += queue->stats.tx_packets;
 }

 rcu_read_unlock();

 vif->dev->stats.rx_bytes = rx_bytes;
 vif->dev->stats.rx_packets = rx_packets;
 vif->dev->stats.tx_bytes = tx_bytes;
 vif->dev->stats.tx_packets = tx_packets;

 return &vif->dev->stats;
}
