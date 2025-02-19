
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl1271_acx_fm_coex {int swallow_clk_diff; int fm_disturbed_band_margin; void* ldo_stabilization_time; int coex_pll_stabilization_time; void* m_divider_fref_set_2; void* m_divider_fref_set_1; int n_divider_fref_set_2; int n_divider_fref_set_1; int swallow_period; int enable; } ;
struct TYPE_3__ {int swallow_clk_diff; int fm_disturbed_band_margin; int ldo_stabilization_time; int coex_pll_stabilization_time; int m_divider_fref_set_2; int m_divider_fref_set_1; int n_divider_fref_set_2; int n_divider_fref_set_1; int swallow_period; int enable; } ;
struct TYPE_4__ {TYPE_1__ fm_coex; } ;
struct wl1271 {TYPE_2__ conf; } ;


 int ACX_FM_COEX_CFG ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int kfree (struct wl1271_acx_fm_coex*) ;
 struct wl1271_acx_fm_coex* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct wl1271_acx_fm_coex*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_fm_coex(struct wl1271 *wl)
{
 struct wl1271_acx_fm_coex *acx;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx fm coex setting");

 acx = kzalloc(sizeof(*acx), GFP_KERNEL);
 if (!acx) {
  ret = -ENOMEM;
  goto out;
 }

 acx->enable = wl->conf.fm_coex.enable;
 acx->swallow_period = wl->conf.fm_coex.swallow_period;
 acx->n_divider_fref_set_1 = wl->conf.fm_coex.n_divider_fref_set_1;
 acx->n_divider_fref_set_2 = wl->conf.fm_coex.n_divider_fref_set_2;
 acx->m_divider_fref_set_1 =
  cpu_to_le16(wl->conf.fm_coex.m_divider_fref_set_1);
 acx->m_divider_fref_set_2 =
  cpu_to_le16(wl->conf.fm_coex.m_divider_fref_set_2);
 acx->coex_pll_stabilization_time =
  cpu_to_le32(wl->conf.fm_coex.coex_pll_stabilization_time);
 acx->ldo_stabilization_time =
  cpu_to_le16(wl->conf.fm_coex.ldo_stabilization_time);
 acx->fm_disturbed_band_margin =
  wl->conf.fm_coex.fm_disturbed_band_margin;
 acx->swallow_clk_diff = wl->conf.fm_coex.swallow_clk_diff;

 ret = wl1271_cmd_configure(wl, ACX_FM_COEX_CFG, acx, sizeof(*acx));
 if (ret < 0) {
  wl1271_warning("acx fm coex setting failed: %d", ret);
  goto out;
 }

out:
 kfree(acx);
 return ret;
}
