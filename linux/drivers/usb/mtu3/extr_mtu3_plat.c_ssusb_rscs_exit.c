
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int vusb33; } ;


 int regulator_disable (int ) ;
 int ssusb_clks_disable (struct ssusb_mtk*) ;
 int ssusb_phy_exit (struct ssusb_mtk*) ;
 int ssusb_phy_power_off (struct ssusb_mtk*) ;

__attribute__((used)) static void ssusb_rscs_exit(struct ssusb_mtk *ssusb)
{
 ssusb_clks_disable(ssusb);
 regulator_disable(ssusb->vusb33);
 ssusb_phy_power_off(ssusb);
 ssusb_phy_exit(ssusb);
}
