
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsi721_device {int * idb_base; int idb_dma; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int IDB_QSIZE ;
 int TSI721_IDB_ENTRY_SIZE ;
 int dma_free_coherent (int *,int,int *,int ) ;

__attribute__((used)) static void tsi721_doorbell_free(struct tsi721_device *priv)
{
 if (priv->idb_base == ((void*)0))
  return;


 dma_free_coherent(&priv->pdev->dev, IDB_QSIZE * TSI721_IDB_ENTRY_SIZE,
     priv->idb_base, priv->idb_dma);
 priv->idb_base = ((void*)0);
}
