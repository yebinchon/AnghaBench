
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int DSS_CONTROL ;
 int DSS_PLL_CONTROL ;
 int DSS_REVISION ;
 int DSS_SDI_CONTROL ;
 int DSS_SDI_STATUS ;
 int DSS_SYSCONFIG ;
 int DSS_SYSSTATUS ;
 int DUMPREG (int ) ;
 int OMAP_DISPLAY_TYPE_SDI ;
 int OMAP_DSS_CHANNEL_LCD ;
 int dss_feat_get_supported_displays (int ) ;
 scalar_t__ dss_runtime_get () ;
 int dss_runtime_put () ;

__attribute__((used)) static void dss_dump_regs(struct seq_file *s)
{


 if (dss_runtime_get())
  return;

 seq_printf(s, "%-35s %08x\n", "DSS_REVISION", dss_read_reg(DSS_REVISION));
 seq_printf(s, "%-35s %08x\n", "DSS_SYSCONFIG", dss_read_reg(DSS_SYSCONFIG));
 seq_printf(s, "%-35s %08x\n", "DSS_SYSSTATUS", dss_read_reg(DSS_SYSSTATUS));
 seq_printf(s, "%-35s %08x\n", "DSS_CONTROL", dss_read_reg(DSS_CONTROL));

 if (dss_feat_get_supported_displays(OMAP_DSS_CHANNEL_LCD) &
   OMAP_DISPLAY_TYPE_SDI) {
  seq_printf(s, "%-35s %08x\n", "DSS_SDI_CONTROL", dss_read_reg(DSS_SDI_CONTROL));
  seq_printf(s, "%-35s %08x\n", "DSS_PLL_CONTROL", dss_read_reg(DSS_PLL_CONTROL));
  seq_printf(s, "%-35s %08x\n", "DSS_SDI_STATUS", dss_read_reg(DSS_SDI_STATUS));
 }

 dss_runtime_put();

}
