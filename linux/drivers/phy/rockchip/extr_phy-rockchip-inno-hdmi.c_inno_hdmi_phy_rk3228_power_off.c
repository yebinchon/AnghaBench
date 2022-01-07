
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inno_hdmi_phy {int dummy; } ;


 int RK3228_BANDGAP_ENABLE ;
 int RK3228_POST_PLL_POWER_DOWN ;
 int RK3228_TMDS_DRIVER_ENABLE ;
 int inno_update_bits (struct inno_hdmi_phy*,int,int ,int ) ;

__attribute__((used)) static void inno_hdmi_phy_rk3228_power_off(struct inno_hdmi_phy *inno)
{
 inno_update_bits(inno, 0xe1, RK3228_TMDS_DRIVER_ENABLE, 0);
 inno_update_bits(inno, 0xe1, RK3228_BANDGAP_ENABLE, 0);
 inno_update_bits(inno, 0xe0, RK3228_POST_PLL_POWER_DOWN,
    RK3228_POST_PLL_POWER_DOWN);
}
