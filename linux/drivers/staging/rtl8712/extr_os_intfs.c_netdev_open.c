
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct net_device {scalar_t__ dev_addr; } ;
struct TYPE_8__ {int (* LedControlHandler ) (struct _adapter*,int ) ;} ;
struct TYPE_7__ {int smart_ps; int power_mgnt; } ;
struct TYPE_6__ {int (* inirp_init ) (struct _adapter*) ;} ;
struct TYPE_5__ {scalar_t__ mac_addr; } ;
struct _adapter {int bup; int driver_stopped; int surprise_removed; int mutex_start; TYPE_4__ ledpriv; TYPE_3__ registrypriv; TYPE_2__ dvobjpriv; TYPE_1__ eeprompriv; } ;


 int ETH_ALEN ;
 int LED_CTL_NO_LINK ;
 scalar_t__ _SUCCESS ;
 int cbw40_enable ;
 int enable_video_mode (struct _adapter*,int ) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct _adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_queue_stopped (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int r8712_initmac ;
 int r8712_setMacAddr_cmd (struct _adapter*,int *) ;
 int r8712_set_ps_mode (struct _adapter*,int ,int ) ;
 scalar_t__ rtl871x_hal_init (struct _adapter*) ;
 scalar_t__ start_drv_threads (struct _adapter*) ;
 int start_drv_timers (struct _adapter*) ;
 int stub1 (struct _adapter*) ;
 int stub2 (struct _adapter*,int ) ;
 scalar_t__ video_mode ;

__attribute__((used)) static int netdev_open(struct net_device *pnetdev)
{
 struct _adapter *padapter = netdev_priv(pnetdev);

 mutex_lock(&padapter->mutex_start);
 if (!padapter->bup) {
  padapter->driver_stopped = 0;
  padapter->surprise_removed = 0;
  padapter->bup = 1;
  if (rtl871x_hal_init(padapter) != _SUCCESS)
   goto netdev_open_error;
  if (!r8712_initmac) {

   memcpy(pnetdev->dev_addr,
          padapter->eeprompriv.mac_addr, ETH_ALEN);
  } else {



   msleep(200);
   r8712_setMacAddr_cmd(padapter, (u8 *)pnetdev->dev_addr);
   memcpy(padapter->eeprompriv.mac_addr,
          pnetdev->dev_addr, ETH_ALEN);
  }
  if (start_drv_threads(padapter) != _SUCCESS)
   goto netdev_open_error;
  if (!padapter->dvobjpriv.inirp_init)
   goto netdev_open_error;
  else
   padapter->dvobjpriv.inirp_init(padapter);
  r8712_set_ps_mode(padapter, padapter->registrypriv.power_mgnt,
      padapter->registrypriv.smart_ps);
 }
 if (!netif_queue_stopped(pnetdev))
  netif_start_queue(pnetdev);
 else
  netif_wake_queue(pnetdev);

 if (video_mode)
  enable_video_mode(padapter, cbw40_enable);

 start_drv_timers(padapter);
 padapter->ledpriv.LedControlHandler(padapter, LED_CTL_NO_LINK);
 mutex_unlock(&padapter->mutex_start);
 return 0;
netdev_open_error:
 padapter->bup = 0;
 netif_carrier_off(pnetdev);
 netif_stop_queue(pnetdev);
 mutex_unlock(&padapter->mutex_start);
 return -1;
}
