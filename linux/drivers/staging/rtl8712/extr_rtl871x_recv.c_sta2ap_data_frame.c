
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_pkt_attrib {int src; int bssid; } ;
struct TYPE_3__ {struct rx_pkt_attrib attrib; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
struct sta_priv {int dummy; } ;
struct sta_info {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct _adapter {struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;
typedef int sint ;


 int ETH_ALEN ;
 int WIFI_AP_STATE ;
 int _FAIL ;
 int _SUCCESS ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 unsigned char* get_bssid (struct mlme_priv*) ;
 scalar_t__ memcmp (int ,unsigned char*,int ) ;
 struct sta_info* r8712_get_stainfo (struct sta_priv*,int ) ;

__attribute__((used)) static sint sta2ap_data_frame(struct _adapter *adapter,
         union recv_frame *precv_frame,
         struct sta_info **psta)
{
 struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 struct sta_priv *pstapriv = &adapter->stapriv;
 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 unsigned char *mybssid = get_bssid(pmlmepriv);

 if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {




  if (memcmp(pattrib->bssid, mybssid, ETH_ALEN))
   return _FAIL;
  *psta = r8712_get_stainfo(pstapriv, pattrib->src);
  if (*psta == ((void*)0))
   return _FAIL;
 }
 return _SUCCESS;
}
