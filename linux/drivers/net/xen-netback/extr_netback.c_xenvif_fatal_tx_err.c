
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif {int disabled; int * queues; scalar_t__ num_queues; int dev; } ;


 int netdev_err (int ,char*) ;
 int xenvif_kick_thread (int *) ;

__attribute__((used)) static void xenvif_fatal_tx_err(struct xenvif *vif)
{
 netdev_err(vif->dev, "fatal error; disabling device\n");
 vif->disabled = 1;

 if (vif->num_queues)
  xenvif_kick_thread(&vif->queues[0]);
}
