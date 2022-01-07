
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int sme_flag; } ;
struct ks_wlan_private {int scan_ind_count; TYPE_2__ sme_i; struct net_device* net_dev; } ;


 int SIOCGIWSCAN ;
 int SME_AP_SCAN ;
 int SME_BSS_SCAN_CONFIRM ;
 int get_dword (struct ks_wlan_private*) ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;
 int netdev_dbg (struct net_device*,char*,int ,int ) ;
 int wireless_send_event (struct net_device*,int ,union iwreq_data*,int *) ;

__attribute__((used)) static
void hostif_bss_scan_confirm(struct ks_wlan_private *priv)
{
 u32 result_code;
 struct net_device *dev = priv->net_dev;
 union iwreq_data wrqu;

 result_code = get_dword(priv);
 netdev_dbg(priv->net_dev, "result=%d :: scan_ind_count=%d\n",
     result_code, priv->scan_ind_count);

 priv->sme_i.sme_flag &= ~SME_AP_SCAN;
 hostif_sme_enqueue(priv, SME_BSS_SCAN_CONFIRM);

 wrqu.data.length = 0;
 wrqu.data.flags = 0;
 wireless_send_event(dev, SIOCGIWSCAN, &wrqu, ((void*)0));
 priv->scan_ind_count = 0;
}
