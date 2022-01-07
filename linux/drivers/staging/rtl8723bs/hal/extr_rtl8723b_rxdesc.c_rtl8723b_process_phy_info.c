
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union recv_frame {int dummy; } recv_frame ;
struct adapter {int dummy; } ;


 int process_link_qual (struct adapter*,union recv_frame*) ;
 int process_rssi (struct adapter*,union recv_frame*) ;
 int rtw_store_phy_info (struct adapter*,void*) ;

void rtl8723b_process_phy_info(struct adapter *padapter, void *prframe)
{
 union recv_frame *precvframe = prframe;



 process_rssi(padapter, precvframe);
 process_link_qual(padapter, precvframe);




}
