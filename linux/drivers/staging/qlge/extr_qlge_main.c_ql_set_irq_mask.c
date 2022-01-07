
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ql_adapter {int tx_ring_count; int intr_count; int rss_ring_count; int rx_ring_count; TYPE_1__* rx_ring; int flags; } ;
struct intr_context {int intr; int irq_mask; } ;
struct TYPE_2__ {int cq_id; } ;


 int QL_MSIX_ENABLED ;
 scalar_t__ likely (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ql_set_irq_mask(struct ql_adapter *qdev, struct intr_context *ctx)
{
 int j, vect = ctx->intr;
 u32 tx_rings_per_vector = qdev->tx_ring_count / qdev->intr_count;

 if (likely(test_bit(QL_MSIX_ENABLED, &qdev->flags))) {



  ctx->irq_mask = (1 << qdev->rx_ring[vect].cq_id);


  for (j = 0; j < tx_rings_per_vector; j++) {
   ctx->irq_mask |=
   (1 << qdev->rx_ring[qdev->rss_ring_count +
   (vect * tx_rings_per_vector) + j].cq_id);
  }
 } else {



  for (j = 0; j < qdev->rx_ring_count; j++)
   ctx->irq_mask |= (1 << qdev->rx_ring[j].cq_id);
 }
}
