
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_wp_data {int base; } ;
typedef enum hdmi_phy_pwr { ____Placeholder_hdmi_phy_pwr } hdmi_phy_pwr ;


 int DSSERR (char*,int) ;
 int ETIMEDOUT ;
 int HDMI_WP_PWR_CTRL ;
 int REG_FLD_MOD (int ,int ,int,int,int) ;
 int REG_GET (int ,int ,int,int) ;
 int hdmi_wait_for_bit_change (int ,int ,int,int,int) ;

int hdmi_wp_set_phy_pwr(struct hdmi_wp_data *wp, enum hdmi_phy_pwr val)
{

 if (REG_GET(wp->base, HDMI_WP_PWR_CTRL, 5, 4) == val)
  return 0;


 REG_FLD_MOD(wp->base, HDMI_WP_PWR_CTRL, val, 7, 6);


 if (hdmi_wait_for_bit_change(wp->base, HDMI_WP_PWR_CTRL, 5, 4, val)
   != val) {
  DSSERR("Failed to set PHY power mode to %d\n", val);
  return -ETIMEDOUT;
 }

 return 0;
}
