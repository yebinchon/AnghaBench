
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sdio_device_id {int dummy; } ;
struct sdio_data {TYPE_1__* func; } ;
struct net_device {int dummy; } ;
struct dvobj_priv {struct adapter* padapters; struct adapter* if1; struct sdio_data intf_data; } ;
struct TYPE_4__ {int mac_addr; } ;
struct adapter {int bDriverStopped; int rtw_wdev; scalar_t__ HalData; int hw_init_completed; int bup; int bSurpriseRemoved; TYPE_2__ eeprompriv; int * intf_free_irq; int * intf_alloc_irq; int * intf_deinit; int * intf_init; int * intf_stop; int * intf_start; scalar_t__ iface_id; struct dvobj_priv* dvobj; } ;
struct TYPE_3__ {int dev; } ;


 int DBG_871X (char*,int,int ,int ,int ) ;
 int RT_TRACE (int ,int ,char*) ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 int _FAIL ;
 int _SUCCESS ;
 int _drv_err_ ;
 int _module_hci_intfs_c_ ;
 int dvobj_to_dev (struct dvobj_priv*) ;
 int hal_btcoex_Initialize (void*) ;
 int kfree (scalar_t__) ;
 int rtw_free_netdev (struct net_device*) ;
 int rtw_hal_chip_configure (struct adapter*) ;
 int rtw_hal_disable_interrupt (struct adapter*) ;
 int rtw_hal_read_chip_info (struct adapter*) ;
 int rtw_hal_read_chip_version (struct adapter*) ;
 int rtw_init_drv_sw (struct adapter*) ;
 int rtw_init_io_priv (struct adapter*,int ) ;
 struct net_device* rtw_init_netdev (struct adapter*) ;
 int rtw_macaddr_cfg (int *,int ) ;
 struct adapter* rtw_netdev_priv (struct net_device*) ;
 int rtw_set_hal_ops (struct adapter*) ;
 int rtw_wdev_alloc (struct adapter*,int ) ;
 int rtw_wdev_free (int ) ;
 int rtw_wdev_unregister (int ) ;
 int sd_intf_start ;
 int sd_intf_stop ;
 int sdio_alloc_irq ;
 int sdio_deinit ;
 int sdio_free_irq ;
 int sdio_init ;
 int sdio_set_intf_ops ;
 int vfree (int *) ;
 struct adapter* vzalloc (int) ;

__attribute__((used)) static struct adapter *rtw_sdio_if1_init(struct dvobj_priv *dvobj, const struct sdio_device_id *pdid)
{
 int status = _FAIL;
 struct net_device *pnetdev;
 struct adapter *padapter = ((void*)0);
 struct sdio_data *psdio = &dvobj->intf_data;

 padapter = vzalloc(sizeof(*padapter));
 if (padapter == ((void*)0)) {
  goto exit;
 }

 padapter->dvobj = dvobj;
 dvobj->if1 = padapter;

 padapter->bDriverStopped =1;

 dvobj->padapters = padapter;
 padapter->iface_id = 0;


 pnetdev = rtw_init_netdev(padapter);
 if (!pnetdev)
  goto free_adapter;

 SET_NETDEV_DEV(pnetdev, dvobj_to_dev(dvobj));

 padapter = rtw_netdev_priv(pnetdev);

 rtw_wdev_alloc(padapter, dvobj_to_dev(dvobj));




 rtw_set_hal_ops(padapter);



 padapter->intf_start = &sd_intf_start;
 padapter->intf_stop = &sd_intf_stop;

 padapter->intf_init = &sdio_init;
 padapter->intf_deinit = &sdio_deinit;
 padapter->intf_alloc_irq = &sdio_alloc_irq;
 padapter->intf_free_irq = &sdio_free_irq;

 if (rtw_init_io_priv(padapter, sdio_set_intf_ops) == _FAIL) {
  RT_TRACE(_module_hci_intfs_c_, _drv_err_,
   ("rtw_drv_init: Can't init io_priv\n"));
  goto free_hal_data;
 }

 rtw_hal_read_chip_version(padapter);

 rtw_hal_chip_configure(padapter);

 hal_btcoex_Initialize((void *) padapter);


 rtw_hal_read_chip_info(padapter);


 if (rtw_init_drv_sw(padapter) == _FAIL) {
  RT_TRACE(_module_hci_intfs_c_, _drv_err_,
    ("rtw_drv_init: Initialize driver software resource Failed!\n"));
  goto free_hal_data;
 }



 rtw_macaddr_cfg(&psdio->func->dev, padapter->eeprompriv.mac_addr);

 rtw_hal_disable_interrupt(padapter);

 DBG_871X("bDriverStopped:%d, bSurpriseRemoved:%d, bup:%d, hw_init_completed:%d\n"
  , padapter->bDriverStopped
  , padapter->bSurpriseRemoved
  , padapter->bup
  , padapter->hw_init_completed
 );

 status = _SUCCESS;

free_hal_data:
 if (status != _SUCCESS && padapter->HalData)
  kfree(padapter->HalData);

 if (status != _SUCCESS) {
  rtw_wdev_unregister(padapter->rtw_wdev);
  rtw_wdev_free(padapter->rtw_wdev);
 }

free_adapter:
 if (status != _SUCCESS) {
  if (pnetdev)
   rtw_free_netdev(pnetdev);
  else
   vfree((u8 *)padapter);
  padapter = ((void*)0);
 }
exit:
 return padapter;
}
