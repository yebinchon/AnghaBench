
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _SUCCESS ;
 int _drv_info_ ;
 int _module_hci_hal_init_c_ ;

__attribute__((used)) static u32 rtl8723bs_inirp_deinit(struct adapter *padapter)
{
 RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("+rtl8723bs_inirp_deinit\n"));

 RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("-rtl8723bs_inirp_deinit\n"));

 return _SUCCESS;
}
