
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int unregistering; } ;
struct dvobj_priv {struct adapter* if1; } ;
struct adapter {int bSurpriseRemoved; } ;


 int IPS_NONE ;
 int LeaveAllPowerSaveMode (struct adapter*) ;
 int PS_MODE_ACTIVE ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_err_ ;
 int _module_hci_intfs_c_ ;
 int pr_debug (char*) ;
 int rtw_pm_set_ips (struct adapter*,int ) ;
 int rtw_pm_set_lps (struct adapter*,int ) ;
 int rtw_usb_if1_deinit (struct adapter*) ;
 int usb_dvobj_deinit (struct usb_interface*) ;
 struct dvobj_priv* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void rtw_dev_remove(struct usb_interface *pusb_intf)
{
 struct dvobj_priv *dvobj = usb_get_intfdata(pusb_intf);
 struct adapter *padapter = dvobj->if1;

 pr_debug("+rtw_dev_remove\n");
 RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("+dev_remove()\n"));

 if (!pusb_intf->unregistering)
  padapter->bSurpriseRemoved = 1;

 rtw_pm_set_ips(padapter, IPS_NONE);
 rtw_pm_set_lps(padapter, PS_MODE_ACTIVE);

 LeaveAllPowerSaveMode(padapter);

 rtw_usb_if1_deinit(padapter);

 usb_dvobj_deinit(pusb_intf);

 RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("-dev_remove()\n"));
 pr_debug("-r871xu_dev_remove, done\n");
}
