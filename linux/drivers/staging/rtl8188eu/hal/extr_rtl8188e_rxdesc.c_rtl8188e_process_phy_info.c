
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recv_frame {int dummy; } ;
struct adapter {int dummy; } ;


 int process_link_qual (struct adapter*,struct recv_frame*) ;
 int process_rssi (struct adapter*,struct recv_frame*) ;

void rtl8188e_process_phy_info(struct adapter *padapter,
          struct recv_frame *precvframe)
{

 process_rssi(padapter, precvframe);

 process_link_qual(padapter, precvframe);
}
