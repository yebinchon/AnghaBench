
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct wilc_vif {int ndev; struct host_if_drv* hif_drv; } ;
struct wilc_conn_info {scalar_t__ status; scalar_t__ req_ies_len; int * req_ies; scalar_t__ resp_ies_len; int * resp_ies; int bssid; int arg; int (* conn_result ) (int ,scalar_t__,int ) ;} ;
struct host_if_drv {int hif_state; int assoc_bssid; struct wilc_conn_info conn_info; int connect_timer; int assoc_resp; } ;
typedef scalar_t__ s32 ;


 int CONN_DISCONN_EVENT_CONN_RESP ;
 int HOST_IF_CONNECTED ;
 int HOST_IF_IDLE ;
 scalar_t__ WILC_MAC_STATUS_CONNECTED ;
 int WILC_MAX_ASSOC_RESP_FRAME_SIZE ;
 scalar_t__ WLAN_STATUS_SUCCESS ;
 int del_timer (int *) ;
 int ether_addr_copy (int ,int ) ;
 int host_int_get_assoc_res_info (struct wilc_vif*,int ,int ,scalar_t__*) ;
 int kfree (int *) ;
 int memset (int ,int ,int ) ;
 int netdev_err (int ,char*,scalar_t__) ;
 int stub1 (int ,scalar_t__,int ) ;
 scalar_t__ wilc_parse_assoc_resp_info (int ,scalar_t__,struct wilc_conn_info*) ;

__attribute__((used)) static inline void host_int_parse_assoc_resp_info(struct wilc_vif *vif,
        u8 mac_status)
{
 struct host_if_drv *hif_drv = vif->hif_drv;
 struct wilc_conn_info *conn_info = &hif_drv->conn_info;

 if (mac_status == WILC_MAC_STATUS_CONNECTED) {
  u32 assoc_resp_info_len;

  memset(hif_drv->assoc_resp, 0, WILC_MAX_ASSOC_RESP_FRAME_SIZE);

  host_int_get_assoc_res_info(vif, hif_drv->assoc_resp,
         WILC_MAX_ASSOC_RESP_FRAME_SIZE,
         &assoc_resp_info_len);

  if (assoc_resp_info_len != 0) {
   s32 err = 0;

   err = wilc_parse_assoc_resp_info(hif_drv->assoc_resp,
        assoc_resp_info_len,
        conn_info);
   if (err)
    netdev_err(vif->ndev,
        "wilc_parse_assoc_resp_info() returned error %d\n",
        err);
  }
 }

 del_timer(&hif_drv->connect_timer);
 conn_info->conn_result(CONN_DISCONN_EVENT_CONN_RESP, mac_status,
          hif_drv->conn_info.arg);

 if (mac_status == WILC_MAC_STATUS_CONNECTED &&
     conn_info->status == WLAN_STATUS_SUCCESS) {
  ether_addr_copy(hif_drv->assoc_bssid, conn_info->bssid);
  hif_drv->hif_state = HOST_IF_CONNECTED;
 } else {
  hif_drv->hif_state = HOST_IF_IDLE;
 }

 kfree(conn_info->resp_ies);
 conn_info->resp_ies = ((void*)0);
 conn_info->resp_ies_len = 0;

 kfree(conn_info->req_ies);
 conn_info->req_ies = ((void*)0);
 conn_info->req_ies_len = 0;
}
