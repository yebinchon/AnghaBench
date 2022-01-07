
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wrqu ;
struct TYPE_4__ {int length; } ;
struct TYPE_3__ {int sa_data; int sa_family; } ;
union iwreq_data {TYPE_2__ data; TYPE_1__ src_addr; int flags; } ;
typedef scalar_t__ u8 ;
struct mlme_priv {int * assoc_bssid; } ;
struct iw_michaelmicfailure {TYPE_2__ data; TYPE_1__ src_addr; int flags; } ;
struct _adapter {int pnetdev; struct mlme_priv mlmepriv; } ;
typedef int ev ;


 int ARPHRD_ETHER ;
 int IWEVMICHAELMICFAILURE ;
 int IW_MICFAILURE_GROUP ;
 int IW_MICFAILURE_PAIRWISE ;
 int ether_addr_copy (int ,int *) ;
 int memset (union iwreq_data*,int,int) ;
 int wireless_send_event (int ,int ,union iwreq_data*,char*) ;

void r8712_handle_tkip_mic_err(struct _adapter *adapter, u8 bgroup)
{
 union iwreq_data wrqu;
 struct iw_michaelmicfailure ev;
 struct mlme_priv *mlmepriv = &adapter->mlmepriv;

 memset(&ev, 0x00, sizeof(ev));
 if (bgroup)
  ev.flags |= IW_MICFAILURE_GROUP;
 else
  ev.flags |= IW_MICFAILURE_PAIRWISE;
 ev.src_addr.sa_family = ARPHRD_ETHER;
 ether_addr_copy(ev.src_addr.sa_data, &mlmepriv->assoc_bssid[0]);
 memset(&wrqu, 0x00, sizeof(wrqu));
 wrqu.data.length = sizeof(ev);
 wireless_send_event(adapter->pnetdev, IWEVMICHAELMICFAILURE, &wrqu,
       (char *)&ev);
}
