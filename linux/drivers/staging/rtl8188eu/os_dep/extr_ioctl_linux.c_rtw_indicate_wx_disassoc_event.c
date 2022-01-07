
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_data; int sa_family; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct adapter {int pnetdev; } ;


 int ARPHRD_ETHER ;
 int DBG_88E_LEVEL (int ,char*) ;
 int SIOCGIWAP ;
 int _drv_always_ ;
 int eth_zero_addr (int ) ;
 int memset (union iwreq_data*,int ,int) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

void rtw_indicate_wx_disassoc_event(struct adapter *padapter)
{
 union iwreq_data wrqu;

 memset(&wrqu, 0, sizeof(union iwreq_data));

 wrqu.ap_addr.sa_family = ARPHRD_ETHER;
 eth_zero_addr(wrqu.ap_addr.sa_data);

 DBG_88E_LEVEL(_drv_always_, "indicate disassoc\n");
 wireless_send_event(padapter->pnetdev, SIOCGIWAP, &wrqu, ((void*)0));
}
