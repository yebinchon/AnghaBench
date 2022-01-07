
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00_dev {int dev; } ;
struct queue_entry_priv_mmio {int * desc; int desc_dma; } ;
struct data_queue {int limit; int desc_size; TYPE_1__* entries; } ;
struct TYPE_2__ {struct queue_entry_priv_mmio* priv_data; } ;


 int dma_free_coherent (int ,int,int *,int ) ;

__attribute__((used)) static void rt2x00mmio_free_queue_dma(struct rt2x00_dev *rt2x00dev,
          struct data_queue *queue)
{
 struct queue_entry_priv_mmio *entry_priv =
     queue->entries[0].priv_data;

 if (entry_priv->desc)
  dma_free_coherent(rt2x00dev->dev,
      queue->limit * queue->desc_size,
      entry_priv->desc, entry_priv->desc_dma);
 entry_priv->desc = ((void*)0);
}
