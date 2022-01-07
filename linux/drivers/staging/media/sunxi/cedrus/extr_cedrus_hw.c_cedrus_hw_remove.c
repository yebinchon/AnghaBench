
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cedrus_dev {int dev; int ahb_clk; int mod_clk; int ram_clk; int rstc; } ;


 int clk_disable_unprepare (int ) ;
 int of_reserved_mem_device_release (int ) ;
 int reset_control_assert (int ) ;
 int sunxi_sram_release (int ) ;

void cedrus_hw_remove(struct cedrus_dev *dev)
{
 reset_control_assert(dev->rstc);

 clk_disable_unprepare(dev->ram_clk);
 clk_disable_unprepare(dev->mod_clk);
 clk_disable_unprepare(dev->ahb_clk);

 sunxi_sram_release(dev->dev);

 of_reserved_mem_device_release(dev->dev);
}
