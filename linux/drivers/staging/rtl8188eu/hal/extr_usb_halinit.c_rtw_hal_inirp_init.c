
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct recv_priv {struct recv_buf* precv_buf; } ;
struct recv_buf {int dummy; } ;
struct adapter {struct recv_priv recvpriv; } ;


 scalar_t__ NR_RECVBUFF ;
 int RECV_BULK_IN_ADDR ;
 int RT_TRACE (int ,int ,char*) ;
 int _FAIL ;
 int _SUCCESS ;
 int _drv_err_ ;
 int _drv_info_ ;
 int _module_hci_hal_init_c_ ;
 int usb_read_port (struct adapter*,int ,struct recv_buf*) ;

u32 rtw_hal_inirp_init(struct adapter *Adapter)
{
 u8 i;
 struct recv_buf *precvbuf;
 uint status;
 struct recv_priv *precvpriv = &Adapter->recvpriv;

 status = _SUCCESS;

 RT_TRACE(_module_hci_hal_init_c_, _drv_info_,
   ("===> usb_inirp_init\n"));


 precvbuf = precvpriv->precv_buf;
 for (i = 0; i < NR_RECVBUFF; i++) {
  if (!usb_read_port(Adapter, RECV_BULK_IN_ADDR, precvbuf)) {
   RT_TRACE(_module_hci_hal_init_c_, _drv_err_, ("usb_rx_init: usb_read_port error\n"));
   status = _FAIL;
   goto exit;
  }

  precvbuf++;
 }

exit:

 RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("<=== usb_inirp_init\n"));

 return status;
}
