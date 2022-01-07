
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum omap_dss_clk_source { ____Placeholder_omap_dss_clk_source } omap_dss_clk_source ;
struct TYPE_2__ {char const** clksrc_names; } ;


 TYPE_1__* omap_current_dss_features ;

const char *dss_feat_get_clk_source_name(enum omap_dss_clk_source id)
{
 return omap_current_dss_features->clksrc_names[id];
}
