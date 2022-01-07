
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hal_ops {int * hal_checke_bt_hang; int * hal_cancle_checkbthang_workqueue; int * hal_free_checkbthang_workqueue; int * hal_init_checkbthang_workqueue; int * hal_xmitframe_enqueue; int * mgnt_xmit; int * hal_xmit; int * SetHalDefVarHandler; int * GetHalDefVarHandler; int * SetHwRegHandlerWithBuf; int * GetHwRegHandler; int * SetHwRegHandler; int * clear_interrupt; int * check_ips_status; int * disable_interrupt; int * enable_interrupt; int * read_adapter_info; int * intf_chip_configure; int * init_default_value; int * free_recv_priv; int * init_recv_priv; int * free_xmit_priv; int * init_xmit_priv; int * inirp_deinit; int * inirp_init; int * hal_deinit; int * hal_init; } ;
struct adapter {struct hal_ops HalFunc; } ;


 int CheckIPSStatus ;
 int ClearInterrupt8723BSdio ;
 int DisableInterrupt8723BSdio ;
 int EnableInterrupt8723BSdio ;
 int GetHalDefVar8723BSDIO ;
 int GetHwReg8723BS ;
 int ReadAdapterInfo8723BS ;
 int SetHalDefVar8723BSDIO ;
 int SetHwReg8723BS ;
 int SetHwRegWithBuf8723B ;
 int rtl8723b_set_hal_ops (struct hal_ops*) ;
 int rtl8723bs_cancle_checkbthang_workqueue ;
 int rtl8723bs_free_checkbthang_workqueue ;
 int rtl8723bs_free_recv_priv ;
 int rtl8723bs_free_xmit_priv ;
 int rtl8723bs_hal_check_bt_hang ;
 int rtl8723bs_hal_deinit ;
 int rtl8723bs_hal_init ;
 int rtl8723bs_hal_xmit ;
 int rtl8723bs_hal_xmitframe_enqueue ;
 int rtl8723bs_inirp_deinit ;
 int rtl8723bs_inirp_init ;
 int rtl8723bs_init_checkbthang_workqueue ;
 int rtl8723bs_init_default_value ;
 int rtl8723bs_init_recv_priv ;
 int rtl8723bs_init_xmit_priv ;
 int rtl8723bs_interface_configure ;
 int rtl8723bs_mgnt_xmit ;

void rtl8723bs_set_hal_ops(struct adapter *padapter)
{
 struct hal_ops *pHalFunc = &padapter->HalFunc;

 rtl8723b_set_hal_ops(pHalFunc);

 pHalFunc->hal_init = &rtl8723bs_hal_init;
 pHalFunc->hal_deinit = &rtl8723bs_hal_deinit;

 pHalFunc->inirp_init = &rtl8723bs_inirp_init;
 pHalFunc->inirp_deinit = &rtl8723bs_inirp_deinit;

 pHalFunc->init_xmit_priv = &rtl8723bs_init_xmit_priv;
 pHalFunc->free_xmit_priv = &rtl8723bs_free_xmit_priv;

 pHalFunc->init_recv_priv = &rtl8723bs_init_recv_priv;
 pHalFunc->free_recv_priv = &rtl8723bs_free_recv_priv;

 pHalFunc->init_default_value = &rtl8723bs_init_default_value;
 pHalFunc->intf_chip_configure = &rtl8723bs_interface_configure;
 pHalFunc->read_adapter_info = &ReadAdapterInfo8723BS;

 pHalFunc->enable_interrupt = &EnableInterrupt8723BSdio;
 pHalFunc->disable_interrupt = &DisableInterrupt8723BSdio;
 pHalFunc->check_ips_status = &CheckIPSStatus;



 pHalFunc->SetHwRegHandler = &SetHwReg8723BS;
 pHalFunc->GetHwRegHandler = &GetHwReg8723BS;
 pHalFunc->SetHwRegHandlerWithBuf = &SetHwRegWithBuf8723B;
 pHalFunc->GetHalDefVarHandler = &GetHalDefVar8723BSDIO;
 pHalFunc->SetHalDefVarHandler = &SetHalDefVar8723BSDIO;

 pHalFunc->hal_xmit = &rtl8723bs_hal_xmit;
 pHalFunc->mgnt_xmit = &rtl8723bs_mgnt_xmit;
 pHalFunc->hal_xmitframe_enqueue = &rtl8723bs_hal_xmitframe_enqueue;







}
