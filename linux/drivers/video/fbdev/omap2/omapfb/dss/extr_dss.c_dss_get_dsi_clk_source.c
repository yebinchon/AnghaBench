
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum omap_dss_clk_source { ____Placeholder_omap_dss_clk_source } omap_dss_clk_source ;
struct TYPE_2__ {int* dsi_clk_source; } ;


 TYPE_1__ dss ;

enum omap_dss_clk_source dss_get_dsi_clk_source(int dsi_module)
{
 return dss.dsi_clk_source[dsi_module];
}
