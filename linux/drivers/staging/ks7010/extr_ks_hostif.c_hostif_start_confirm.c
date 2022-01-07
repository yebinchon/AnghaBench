
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sa_data; int sa_family; } ;
struct TYPE_3__ {scalar_t__ flags; scalar_t__ length; } ;
union iwreq_data {TYPE_2__ ap_addr; TYPE_1__ data; } ;
struct ks_wlan_private {int scan_ind_count; int net_dev; int connect_status; } ;


 int ARPHRD_ETHER ;
 int SIOCGIWAP ;
 int SME_START_CONFIRM ;
 int eth_zero_addr (int ) ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;
 scalar_t__ is_connect_status (int ) ;
 int netdev_dbg (int ,char*,int ) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

__attribute__((used)) static
void hostif_start_confirm(struct ks_wlan_private *priv)
{
 union iwreq_data wrqu;

 wrqu.data.length = 0;
 wrqu.data.flags = 0;
 wrqu.ap_addr.sa_family = ARPHRD_ETHER;
 if (is_connect_status(priv->connect_status)) {
  eth_zero_addr(wrqu.ap_addr.sa_data);
  wireless_send_event(priv->net_dev, SIOCGIWAP, &wrqu, ((void*)0));
 }
 netdev_dbg(priv->net_dev, " scan_ind_count=%d\n", priv->scan_ind_count);
 hostif_sme_enqueue(priv, SME_START_CONFIRM);
}
