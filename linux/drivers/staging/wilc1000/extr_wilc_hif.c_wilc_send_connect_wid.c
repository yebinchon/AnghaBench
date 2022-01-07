
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct wilc_vif {int ndev; struct host_if_drv* hif_drv; } ;
struct wilc_join_bss_param {int dummy; } ;
struct wilc_conn_info {int req_ies_len; int * req_ies; int auth_type; int security; struct wilc_join_bss_param* param; } ;
struct wid {int size; int * val; void* type; int id; } ;
struct host_if_drv {int hif_state; struct wilc_conn_info conn_info; } ;
typedef int s8 ;


 int HOST_IF_WAITING_CONN_RESP ;
 int WID_11I_MODE ;
 int WID_AUTH_TYPE ;
 void* WID_BIN_DATA ;
 void* WID_CHAR ;
 int WID_INFO_ELEMENT_ASSOCIATE ;
 int WID_JOIN_REQ_EXTENDED ;
 void* WID_STR ;
 int WILC_SET_CFG ;
 int kfree (int *) ;
 int netdev_err (int ,char*) ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,size_t) ;

__attribute__((used)) static int wilc_send_connect_wid(struct wilc_vif *vif)
{
 int result = 0;
 struct wid wid_list[4];
 u32 wid_cnt = 0;
 struct host_if_drv *hif_drv = vif->hif_drv;
 struct wilc_conn_info *conn_attr = &hif_drv->conn_info;
 struct wilc_join_bss_param *bss_param = conn_attr->param;

 wid_list[wid_cnt].id = WID_INFO_ELEMENT_ASSOCIATE;
 wid_list[wid_cnt].type = WID_BIN_DATA;
 wid_list[wid_cnt].val = conn_attr->req_ies;
 wid_list[wid_cnt].size = conn_attr->req_ies_len;
 wid_cnt++;

 wid_list[wid_cnt].id = WID_11I_MODE;
 wid_list[wid_cnt].type = WID_CHAR;
 wid_list[wid_cnt].size = sizeof(char);
 wid_list[wid_cnt].val = (s8 *)&conn_attr->security;
 wid_cnt++;

 wid_list[wid_cnt].id = WID_AUTH_TYPE;
 wid_list[wid_cnt].type = WID_CHAR;
 wid_list[wid_cnt].size = sizeof(char);
 wid_list[wid_cnt].val = (s8 *)&conn_attr->auth_type;
 wid_cnt++;

 wid_list[wid_cnt].id = WID_JOIN_REQ_EXTENDED;
 wid_list[wid_cnt].type = WID_STR;
 wid_list[wid_cnt].size = sizeof(*bss_param);
 wid_list[wid_cnt].val = (u8 *)bss_param;
 wid_cnt++;

 result = wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list, wid_cnt);
 if (result) {
  netdev_err(vif->ndev, "failed to send config packet\n");
  goto error;
 } else {
  hif_drv->hif_state = HOST_IF_WAITING_CONN_RESP;
 }

 return 0;

error:

 kfree(conn_attr->req_ies);
 conn_attr->req_ies = ((void*)0);

 return result;
}
