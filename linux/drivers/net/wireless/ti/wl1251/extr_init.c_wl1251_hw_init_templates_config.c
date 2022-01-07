
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl12xx_qos_null_data_template {int dummy; } ;
struct wl12xx_ps_poll_template {int dummy; } ;
struct wl12xx_probe_resp_template {int dummy; } ;
struct wl12xx_probe_req_template {int dummy; } ;
struct wl12xx_null_data_template {int dummy; } ;
struct wl12xx_beacon_template {int dummy; } ;
struct wl1251 {int dummy; } ;


 int CMD_BEACON ;
 int CMD_NULL_DATA ;
 int CMD_PROBE_REQ ;
 int CMD_PROBE_RESP ;
 int CMD_PS_POLL ;
 int CMD_QOS_NULL_DATA ;
 int PARTIAL_VBM_MAX ;
 int TIM_ELE_ID ;
 int memset (int *,int ,int) ;
 int wl1251_cmd_template_set (struct wl1251*,int ,int *,int) ;
 int wl1251_cmd_vbm (struct wl1251*,int ,int *,int,int ) ;

int wl1251_hw_init_templates_config(struct wl1251 *wl)
{
 int ret;
 u8 partial_vbm[PARTIAL_VBM_MAX];


 ret = wl1251_cmd_template_set(wl, CMD_PROBE_REQ, ((void*)0),
          sizeof(struct wl12xx_probe_req_template));
 if (ret < 0)
  return ret;

 ret = wl1251_cmd_template_set(wl, CMD_NULL_DATA, ((void*)0),
          sizeof(struct wl12xx_null_data_template));
 if (ret < 0)
  return ret;

 ret = wl1251_cmd_template_set(wl, CMD_PS_POLL, ((void*)0),
          sizeof(struct wl12xx_ps_poll_template));
 if (ret < 0)
  return ret;

 ret = wl1251_cmd_template_set(wl, CMD_QOS_NULL_DATA, ((void*)0),
          sizeof
          (struct wl12xx_qos_null_data_template));
 if (ret < 0)
  return ret;

 ret = wl1251_cmd_template_set(wl, CMD_PROBE_RESP, ((void*)0),
          sizeof
          (struct wl12xx_probe_resp_template));
 if (ret < 0)
  return ret;

 ret = wl1251_cmd_template_set(wl, CMD_BEACON, ((void*)0),
          sizeof
          (struct wl12xx_beacon_template));
 if (ret < 0)
  return ret;


 memset(partial_vbm, 0, PARTIAL_VBM_MAX);
 ret = wl1251_cmd_vbm(wl, TIM_ELE_ID, partial_vbm, PARTIAL_VBM_MAX, 0);
 if (ret < 0)
  return ret;

 ret = wl1251_cmd_vbm(wl, TIM_ELE_ID, partial_vbm, 1, 0);
 if (ret < 0)
  return ret;

 return 0;
}
