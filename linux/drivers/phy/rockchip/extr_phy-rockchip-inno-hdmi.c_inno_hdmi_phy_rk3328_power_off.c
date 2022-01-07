
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inno_hdmi_phy {int dummy; } ;


 int RK3328_BANDGAP_ENABLE ;
 int RK3328_POST_PLL_POWER_DOWN ;
 int RK3328_TMDS_DRIVER_ENABLE ;
 int inno_update_bits (struct inno_hdmi_phy*,int,int ,int ) ;
 int inno_write (struct inno_hdmi_phy*,int,int ) ;

__attribute__((used)) static void inno_hdmi_phy_rk3328_power_off(struct inno_hdmi_phy *inno)
{
 inno_update_bits(inno, 0xb2, RK3328_TMDS_DRIVER_ENABLE, 0);
 inno_update_bits(inno, 0xb0, RK3328_BANDGAP_ENABLE, 0);
 inno_update_bits(inno, 0xaa, RK3328_POST_PLL_POWER_DOWN,
    RK3328_POST_PLL_POWER_DOWN);


 inno_write(inno, 0x05, 0);
 inno_write(inno, 0x07, 0);
}
