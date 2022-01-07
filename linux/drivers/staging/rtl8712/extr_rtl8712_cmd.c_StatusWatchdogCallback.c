
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _adapter {int dummy; } ;


 int check_hw_pbc (struct _adapter*) ;
 int query_fw_rx_phy_status (struct _adapter*) ;

__attribute__((used)) static void StatusWatchdogCallback(struct _adapter *padapter)
{
 check_hw_pbc(padapter);
 query_fw_rx_phy_status(padapter);
}
