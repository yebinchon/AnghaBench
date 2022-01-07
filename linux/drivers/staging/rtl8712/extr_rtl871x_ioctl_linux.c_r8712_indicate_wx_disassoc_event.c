
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_data; int sa_family; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct _adapter {int pnetdev; } ;


 int ARPHRD_ETHER ;
 int SIOCGIWAP ;
 int eth_zero_addr (int ) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

void r8712_indicate_wx_disassoc_event(struct _adapter *padapter)
{
 union iwreq_data wrqu;

 wrqu.ap_addr.sa_family = ARPHRD_ETHER;
 eth_zero_addr(wrqu.ap_addr.sa_data);
 wireless_send_event(padapter->pnetdev, SIOCGIWAP, &wrqu, ((void*)0));
}
