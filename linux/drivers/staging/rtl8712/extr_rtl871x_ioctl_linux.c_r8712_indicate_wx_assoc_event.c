
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
struct _adapter {int pnetdev; struct mlme_priv mlmepriv; } ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int SIOCGIWAP ;
 int memcpy (int ,int ,int ) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

void r8712_indicate_wx_assoc_event(struct _adapter *padapter)
{
 union iwreq_data wrqu;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

 wrqu.ap_addr.sa_family = ARPHRD_ETHER;
 memcpy(wrqu.ap_addr.sa_data, pmlmepriv->cur_network.network.MacAddress,
  ETH_ALEN);
 wireless_send_event(padapter->pnetdev, SIOCGIWAP, &wrqu, ((void*)0));
}
