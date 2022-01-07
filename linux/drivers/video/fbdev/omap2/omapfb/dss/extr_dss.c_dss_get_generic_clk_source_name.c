
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_dss_clk_source { ____Placeholder_omap_dss_clk_source } omap_dss_clk_source ;


 char const** dss_generic_clk_source_names ;

const char *dss_get_generic_clk_source_name(enum omap_dss_clk_source clk_src)
{
 return dss_generic_clk_source_names[clk_src];
}
