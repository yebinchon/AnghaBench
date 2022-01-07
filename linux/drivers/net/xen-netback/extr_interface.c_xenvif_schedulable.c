
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif {int disabled; int status; int dev; } ;


 int VIF_STATUS_CONNECTED ;
 scalar_t__ netif_running (int ) ;
 scalar_t__ test_bit (int ,int *) ;

int xenvif_schedulable(struct xenvif *vif)
{
 return netif_running(vif->dev) &&
  test_bit(VIF_STATUS_CONNECTED, &vif->status) &&
  !vif->disabled;
}
