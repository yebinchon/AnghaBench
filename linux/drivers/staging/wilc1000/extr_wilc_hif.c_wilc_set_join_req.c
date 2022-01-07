
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wilc_vif {struct host_if_drv* hif_drv; } ;
struct wilc_conn_info {size_t req_ies_len; int req_ies; int bssid; } ;
struct host_if_drv {int connect_timer; struct wilc_vif* connect_timer_vif; struct wilc_conn_info conn_info; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WILC_HIF_CONNECT_TIMEOUT_MS ;
 int ether_addr_copy (int ,int *) ;
 scalar_t__ jiffies ;
 int kfree (int ) ;
 int kmemdup (int const*,size_t,int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int wilc_send_connect_wid (struct wilc_vif*) ;

int wilc_set_join_req(struct wilc_vif *vif, u8 *bssid, const u8 *ies,
        size_t ies_len)
{
 int result;
 struct host_if_drv *hif_drv = vif->hif_drv;
 struct wilc_conn_info *conn_info = &hif_drv->conn_info;

 if (bssid)
  ether_addr_copy(conn_info->bssid, bssid);

 if (ies) {
  conn_info->req_ies_len = ies_len;
  conn_info->req_ies = kmemdup(ies, ies_len, GFP_KERNEL);
  if (!conn_info->req_ies)
   return -ENOMEM;
 }

 result = wilc_send_connect_wid(vif);
 if (result)
  goto free_ies;

 hif_drv->connect_timer_vif = vif;
 mod_timer(&hif_drv->connect_timer,
    jiffies + msecs_to_jiffies(WILC_HIF_CONNECT_TIMEOUT_MS));

 return 0;

free_ies:
 kfree(conn_info->req_ies);

 return result;
}
