
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum omap_dss_clk_source { ____Placeholder_omap_dss_clk_source } omap_dss_clk_source ;
struct TYPE_2__ {int dispc_clk_source; } ;


 TYPE_1__ dss ;

enum omap_dss_clk_source dss_get_dispc_clk_source(void)
{
 return dss.dispc_clk_source;
}
