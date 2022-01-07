
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sa_data; int sa_family; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct TYPE_5__ {int MacAddress; } ;
struct TYPE_6__ {TYPE_2__ network; } ;
struct mlme_priv {TYPE_3__ cur_network; } ;
struct adapter {int pnetdev; struct mlme_priv mlmepriv; } ;


 int ARPHRD_ETHER ;
 int DBG_88E_LEVEL (int ,char*) ;
 int ETH_ALEN ;
 int SIOCGIWAP ;
 int _drv_always_ ;
 int memcpy (int ,int ,int ) ;
 int memset (union iwreq_data*,int ,int) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

void rtw_indicate_wx_assoc_event(struct adapter *padapter)
{
 union iwreq_data wrqu;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 memset(&wrqu, 0, sizeof(union iwreq_data));

 wrqu.ap_addr.sa_family = ARPHRD_ETHER;

 memcpy(wrqu.ap_addr.sa_data, pmlmepriv->cur_network.network.MacAddress, ETH_ALEN);

 DBG_88E_LEVEL(_drv_always_, "assoc success\n");
 wireless_send_event(padapter->pnetdev, SIOCGIWAP, &wrqu, ((void*)0));
}
