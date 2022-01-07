
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wl1271 {int dummy; } ;
struct conf_tx_rate_class {int aflags; int long_retry_limit; int short_retry_limit; int enabled_rates; } ;
struct TYPE_2__ {int aflags; int long_retry_limit; int short_retry_limit; void* enabled_rates; } ;
struct acx_rate_policy {void* rate_policy_idx; TYPE_1__ rate_policy; } ;


 int ACX_RATE_POLICY ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* cpu_to_le32 (int ) ;
 int kfree (struct acx_rate_policy*) ;
 struct acx_rate_policy* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_rate_policy*,int) ;
 int wl1271_debug (int ,char*,int ,int ) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_ap_rate_policy(struct wl1271 *wl, struct conf_tx_rate_class *c,
        u8 idx)
{
 struct acx_rate_policy *acx;
 int ret = 0;

 wl1271_debug(DEBUG_ACX, "acx ap rate policy %d rates 0x%x",
       idx, c->enabled_rates);

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->rate_policy.enabled_rates = cpu_to_le32(c->enabled_rates);
 acx->rate_policy.short_retry_limit = c->short_retry_limit;
 acx->rate_policy.long_retry_limit = c->long_retry_limit;
 acx->rate_policy.aflags = c->aflags;

 acx->rate_policy_idx = cpu_to_le32(idx);

 ret = wl1271_cmd_configure(wl, ACX_RATE_POLICY, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("Setting of ap rate policy failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
