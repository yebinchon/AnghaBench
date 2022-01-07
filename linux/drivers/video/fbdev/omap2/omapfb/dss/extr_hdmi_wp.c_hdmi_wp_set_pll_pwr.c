
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_wp_data {int base; } ;
typedef enum hdmi_pll_pwr { ____Placeholder_hdmi_pll_pwr } hdmi_pll_pwr ;


 int DSSERR (char*) ;
 int ETIMEDOUT ;
 int HDMI_WP_PWR_CTRL ;
 int REG_FLD_MOD (int ,int ,int,int,int) ;
 int hdmi_wait_for_bit_change (int ,int ,int,int ,int) ;

int hdmi_wp_set_pll_pwr(struct hdmi_wp_data *wp, enum hdmi_pll_pwr val)
{

 REG_FLD_MOD(wp->base, HDMI_WP_PWR_CTRL, val, 3, 2);


 if (hdmi_wait_for_bit_change(wp->base, HDMI_WP_PWR_CTRL, 1, 0, val)
   != val) {
  DSSERR("Failed to set PLL_PWR_STATUS\n");
  return -ETIMEDOUT;
 }

 return 0;
}
