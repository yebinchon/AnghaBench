
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl1251_cmd_ps_params {int send_null_data; int retries; int hang_over_period; int null_data_rate; int ps_mode; } ;
struct wl1251 {int dummy; } ;


 int CMD_SET_PS_MODE ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl1251_cmd_ps_params*) ;
 struct wl1251_cmd_ps_params* kzalloc (int,int ) ;
 int wl1251_cmd_send (struct wl1251*,int ,struct wl1251_cmd_ps_params*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_error (char*) ;

int wl1251_cmd_ps_mode(struct wl1251 *wl, u8 ps_mode)
{
 struct wl1251_cmd_ps_params *ps_params = ((void*)0);
 int ret = 0;

 wl1251_debug(DEBUG_CMD, "cmd set ps mode");

 ps_params = kzalloc(sizeof(*ps_params), GFP_KERNEL);
 if (!ps_params) {
  ret = -ENOMEM;
  goto out;
 }

 ps_params->ps_mode = ps_mode;
 ps_params->send_null_data = 1;
 ps_params->retries = 5;
 ps_params->hang_over_period = 128;
 ps_params->null_data_rate = 1;

 ret = wl1251_cmd_send(wl, CMD_SET_PS_MODE, ps_params,
         sizeof(*ps_params));
 if (ret < 0) {
  wl1251_error("cmd set_ps_mode failed");
  goto out;
 }

out:
 kfree(ps_params);
 return ret;
}
