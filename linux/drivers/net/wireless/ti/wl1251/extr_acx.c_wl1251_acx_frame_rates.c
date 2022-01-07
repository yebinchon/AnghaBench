
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct wl1251 {int dummy; } ;
struct acx_fw_gen_frame_rates {void* tx_mgt_frame_mod; void* tx_mgt_frame_rate; void* tx_ctrl_frame_mod; void* tx_ctrl_frame_rate; } ;


 int ACX_FW_GEN_FRAME_RATES ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct acx_fw_gen_frame_rates*) ;
 struct acx_fw_gen_frame_rates* kzalloc (int,int ) ;
 int wl1251_cmd_configure (struct wl1251*,int ,struct acx_fw_gen_frame_rates*,int) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_error (char*) ;

int wl1251_acx_frame_rates(struct wl1251 *wl, u8 ctrl_rate, u8 ctrl_mod,
      u8 mgt_rate, u8 mgt_mod)
{
 struct acx_fw_gen_frame_rates *rates;
 int ret;

 wl1251_debug(DEBUG_ACX, "acx frame rates");

 rates = kzalloc(sizeof(*rates), GFP_KERNEL);
 if (!rates)
  return -ENOMEM;

 rates->tx_ctrl_frame_rate = ctrl_rate;
 rates->tx_ctrl_frame_mod = ctrl_mod;
 rates->tx_mgt_frame_rate = mgt_rate;
 rates->tx_mgt_frame_mod = mgt_mod;

 ret = wl1251_cmd_configure(wl, ACX_FW_GEN_FRAME_RATES,
       rates, sizeof(*rates));
 if (ret < 0) {
  wl1251_error("Failed to set FW rates and modulation");
  goto out;
 }

out:
 kfree(rates);
 return ret;
}
