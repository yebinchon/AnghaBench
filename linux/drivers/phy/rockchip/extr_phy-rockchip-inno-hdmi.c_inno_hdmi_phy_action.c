
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inno_hdmi_phy {int sysclk; int refpclk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void inno_hdmi_phy_action(void *data)
{
 struct inno_hdmi_phy *inno = data;

 clk_disable_unprepare(inno->refpclk);
 clk_disable_unprepare(inno->sysclk);
}
