
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_usb {int optclk; int wkupclk; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static int omap_usb2_disable_clocks(struct omap_usb *phy)
{
 clk_disable_unprepare(phy->wkupclk);
 if (!IS_ERR(phy->optclk))
  clk_disable_unprepare(phy->optclk);

 return 0;
}
