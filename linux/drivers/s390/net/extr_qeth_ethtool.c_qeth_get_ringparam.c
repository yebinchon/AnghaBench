
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_count; } ;
struct TYPE_4__ {TYPE_1__ in_buf_pool; } ;
struct qeth_card {TYPE_2__ qdio; } ;
struct net_device {struct qeth_card* ml_priv; } ;
struct ethtool_ringparam {void* tx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; int rx_pending; void* tx_max_pending; scalar_t__ rx_jumbo_max_pending; scalar_t__ rx_mini_max_pending; void* rx_max_pending; } ;


 void* QDIO_MAX_BUFFERS_PER_Q ;

__attribute__((used)) static void qeth_get_ringparam(struct net_device *dev,
          struct ethtool_ringparam *param)
{
 struct qeth_card *card = dev->ml_priv;

 param->rx_max_pending = QDIO_MAX_BUFFERS_PER_Q;
 param->rx_mini_max_pending = 0;
 param->rx_jumbo_max_pending = 0;
 param->tx_max_pending = QDIO_MAX_BUFFERS_PER_Q;

 param->rx_pending = card->qdio.in_buf_pool.buf_count;
 param->rx_mini_pending = 0;
 param->rx_jumbo_pending = 0;
 param->tx_pending = QDIO_MAX_BUFFERS_PER_Q;
}
