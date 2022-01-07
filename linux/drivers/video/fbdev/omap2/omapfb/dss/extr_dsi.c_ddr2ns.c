
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {int clkdco; } ;
struct TYPE_4__ {TYPE_1__ cinfo; } ;
struct dsi_data {TYPE_2__ pll; } ;


 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;

__attribute__((used)) static inline unsigned ddr2ns(struct platform_device *dsidev, unsigned ddr)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);

 unsigned long ddr_clk = dsi->pll.cinfo.clkdco / 4;
 return ddr * 1000 * 1000 / (ddr_clk / 1000);
}
