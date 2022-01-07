
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int (* LedControlHandler ) (struct _adapter*,int ) ;} ;
struct _adapter {TYPE_1__ ledpriv; } ;


 int LED_CTL_POWER_OFF ;
 int msleep (int) ;
 struct _adapter* netdev_priv (struct net_device*) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int r8712_disassoc_cmd (struct _adapter*) ;
 int r8712_free_assoc_resources (struct _adapter*) ;
 int r8712_free_network_queue (struct _adapter*) ;
 int r8712_ind_disconnect (struct _adapter*) ;
 int stub1 (struct _adapter*,int ) ;

__attribute__((used)) static int netdev_close(struct net_device *pnetdev)
{
 struct _adapter *padapter = netdev_priv(pnetdev);


 padapter->ledpriv.LedControlHandler(padapter, LED_CTL_POWER_OFF);
 msleep(200);


 if (pnetdev) {
  if (!netif_queue_stopped(pnetdev))
   netif_stop_queue(pnetdev);
 }


 r8712_disassoc_cmd(padapter);

 r8712_ind_disconnect(padapter);

 r8712_free_assoc_resources(padapter);

 r8712_free_network_queue(padapter);
 return 0;
}
