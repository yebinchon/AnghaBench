
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct _adapter {int recvpriv; int stapriv; int xmitpriv; int mlmepriv; int evtpriv; int cmdpriv; struct net_device* pnetdev; } ;


 int _free_xmit_priv (int *) ;
 int _r8712_free_recv_priv (int *) ;
 int _r8712_free_sta_priv (int *) ;
 int free_netdev (struct net_device*) ;
 int mp871xdeinit (struct _adapter*) ;
 int r8712_DeInitSwLeds (struct _adapter*) ;
 int r8712_free_cmd_priv (int *) ;
 int r8712_free_evt_priv (int *) ;
 int r8712_free_io_queue (struct _adapter*) ;
 int r8712_free_mlme_priv (int *) ;

void r8712_free_drv_sw(struct _adapter *padapter)
{
 struct net_device *pnetdev = padapter->pnetdev;

 r8712_free_cmd_priv(&padapter->cmdpriv);
 r8712_free_evt_priv(&padapter->evtpriv);
 r8712_DeInitSwLeds(padapter);
 r8712_free_mlme_priv(&padapter->mlmepriv);
 r8712_free_io_queue(padapter);
 _free_xmit_priv(&padapter->xmitpriv);
 _r8712_free_sta_priv(&padapter->stapriv);
 _r8712_free_recv_priv(&padapter->recvpriv);
 mp871xdeinit(padapter);
 if (pnetdev)
  free_netdev(pnetdev);
}
