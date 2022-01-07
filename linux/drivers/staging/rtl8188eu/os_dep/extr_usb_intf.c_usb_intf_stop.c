
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int bSurpriseRemoved; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _drv_err_ ;
 int _module_hci_intfs_c_ ;
 int rtw_hal_inirp_deinit (struct adapter*) ;
 int usb_write_port_cancel (struct adapter*) ;

void usb_intf_stop(struct adapter *padapter)
{
 RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("+usb_intf_stop\n"));


 if (!padapter->bSurpriseRemoved) {


  RT_TRACE(_module_hci_intfs_c_, _drv_err_,
    ("SurpriseRemoved == false\n"));
 }


 rtw_hal_inirp_deinit(padapter);


 usb_write_port_cancel(padapter);



 RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("-usb_intf_stop\n"));
}
