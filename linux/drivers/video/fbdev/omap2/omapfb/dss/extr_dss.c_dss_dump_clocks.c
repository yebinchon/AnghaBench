
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int dss_clk; } ;


 int OMAP_DSS_CLK_SRC_FCK ;
 unsigned long clk_get_rate (int ) ;
 TYPE_1__ dss ;
 char* dss_feat_get_clk_source_name (int ) ;
 char* dss_get_generic_clk_source_name (int ) ;
 scalar_t__ dss_runtime_get () ;
 int dss_runtime_put () ;
 int seq_printf (struct seq_file*,char*,...) ;

void dss_dump_clocks(struct seq_file *s)
{
 const char *fclk_name, *fclk_real_name;
 unsigned long fclk_rate;

 if (dss_runtime_get())
  return;

 seq_printf(s, "- DSS -\n");

 fclk_name = dss_get_generic_clk_source_name(OMAP_DSS_CLK_SRC_FCK);
 fclk_real_name = dss_feat_get_clk_source_name(OMAP_DSS_CLK_SRC_FCK);
 fclk_rate = clk_get_rate(dss.dss_clk);

 seq_printf(s, "%s (%s) = %lu\n",
   fclk_name, fclk_real_name,
   fclk_rate);

 dss_runtime_put();
}
