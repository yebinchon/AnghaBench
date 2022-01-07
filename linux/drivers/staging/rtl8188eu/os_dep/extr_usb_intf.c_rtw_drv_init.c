
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct dvobj_priv {int dummy; } ;
struct adapter {int dummy; } ;


 int ENODEV ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_err_ ;
 int _module_hci_intfs_c_ ;
 int pr_debug (char*) ;
 struct adapter* rtw_usb_if1_init (struct dvobj_priv*,struct usb_interface*,struct usb_device_id const*) ;
 int usb_dvobj_deinit (struct usb_interface*) ;
 struct dvobj_priv* usb_dvobj_init (struct usb_interface*) ;

__attribute__((used)) static int rtw_drv_init(struct usb_interface *pusb_intf, const struct usb_device_id *pdid)
{
 struct adapter *if1 = ((void*)0);
 struct dvobj_priv *dvobj;


 dvobj = usb_dvobj_init(pusb_intf);
 if (!dvobj) {
  RT_TRACE(_module_hci_intfs_c_, _drv_err_,
    ("initialize device object priv Failed!\n"));
  goto exit;
 }

 if1 = rtw_usb_if1_init(dvobj, pusb_intf, pdid);
 if (!if1) {
  pr_debug("rtw_init_primarystruct adapter Failed!\n");
  goto free_dvobj;
 }

 return 0;

free_dvobj:
 usb_dvobj_deinit(pusb_intf);
exit:
 return -ENODEV;
}
