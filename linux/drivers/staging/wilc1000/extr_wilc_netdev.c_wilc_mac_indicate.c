
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc {void* mac_status; int sync_event; } ;
typedef void* s8 ;


 int WID_STATUS ;
 void* WILC_MAC_STATUS_INIT ;
 int complete (int *) ;
 int wilc_wlan_cfg_get_val (struct wilc*,int ,void**,int) ;

void wilc_mac_indicate(struct wilc *wilc)
{
 s8 status;

 wilc_wlan_cfg_get_val(wilc, WID_STATUS, &status, 1);
 if (wilc->mac_status == WILC_MAC_STATUS_INIT) {
  wilc->mac_status = status;
  complete(&wilc->sync_event);
 } else {
  wilc->mac_status = status;
 }
}
