
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl12xx_acx_set_rate_mgmt_params {int rate_retry_policy; int rate_check_down; int rate_check_up; int per_beta2_shift; int per_beta1_shift; int per_add_shift; int per_alpha_shift; int tx_fail_high_th; int tx_fail_low_th; int inverse_curiosity_factor; void* max_per; void* per_th2; void* per_th1; void* per_add; void* rate_retry_score; int index; } ;
struct conf_rate_policy_settings {int rate_retry_policy; int rate_check_down; int rate_check_up; int per_beta2_shift; int per_beta1_shift; int per_add_shift; int per_alpha_shift; int tx_fail_high_th; int tx_fail_low_th; int inverse_curiosity_factor; int max_per; int per_th2; int per_th1; int per_add; int rate_retry_score; } ;
struct TYPE_2__ {struct conf_rate_policy_settings rate; } ;
struct wl1271 {TYPE_1__ conf; } ;


 int ACX_RATE_MGMT_ALL_PARAMS ;
 int ACX_SET_RATE_MGMT_PARAMS ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* cpu_to_le16 (int ) ;
 int kfree (struct wl12xx_acx_set_rate_mgmt_params*) ;
 struct wl12xx_acx_set_rate_mgmt_params* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl12xx_acx_set_rate_mgmt_params*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl12xx_acx_set_rate_mgmt_params(struct wl1271 *wl)
{
 struct wl12xx_acx_set_rate_mgmt_params *acx = ((void*)0);
 struct conf_rate_policy_settings *conf = &wl->conf.rate;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx set rate mgmt params");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx)
  return -ENOMEM;

 acx->index = ACX_RATE_MGMT_ALL_PARAMS;
 acx->rate_retry_score = cpu_to_le16(conf->rate_retry_score);
 acx->per_add = cpu_to_le16(conf->per_add);
 acx->per_th1 = cpu_to_le16(conf->per_th1);
 acx->per_th2 = cpu_to_le16(conf->per_th2);
 acx->max_per = cpu_to_le16(conf->max_per);
 acx->inverse_curiosity_factor = conf->inverse_curiosity_factor;
 acx->tx_fail_low_th = conf->tx_fail_low_th;
 acx->tx_fail_high_th = conf->tx_fail_high_th;
 acx->per_alpha_shift = conf->per_alpha_shift;
 acx->per_add_shift = conf->per_add_shift;
 acx->per_beta1_shift = conf->per_beta1_shift;
 acx->per_beta2_shift = conf->per_beta2_shift;
 acx->rate_check_up = conf->rate_check_up;
 acx->rate_check_down = conf->rate_check_down;
 memcpy(acx->rate_retry_policy, conf->rate_retry_policy,
        sizeof(acx->rate_retry_policy));

 ret = wl1271_cmd_configure(wl, ACX_SET_RATE_MGMT_PARAMS,
       acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx set rate mgmt params failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
