
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {struct ci_hdrc* private; } ;
struct ci_hdrc {scalar_t__ is_otg; scalar_t__ in_lpm; } ;


 int EPERM ;
 int OP_PORTSC ;
 int OP_USBCMD ;
 int OP_USBMODE ;
 int hw_read (struct ci_hdrc*,int ,int ) ;
 int hw_read_intr_enable (struct ci_hdrc*) ;
 int hw_read_intr_status (struct ci_hdrc*) ;
 int hw_read_otgsc (struct ci_hdrc*,int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int ci_registers_show(struct seq_file *s, void *unused)
{
 struct ci_hdrc *ci = s->private;
 u32 tmp_reg;

 if (!ci || ci->in_lpm)
  return -EPERM;


 tmp_reg = hw_read_intr_enable(ci);
 seq_printf(s, "USBINTR reg: %08x\n", tmp_reg);

 tmp_reg = hw_read_intr_status(ci);
 seq_printf(s, "USBSTS reg: %08x\n", tmp_reg);

 tmp_reg = hw_read(ci, OP_USBMODE, ~0);
 seq_printf(s, "USBMODE reg: %08x\n", tmp_reg);

 tmp_reg = hw_read(ci, OP_USBCMD, ~0);
 seq_printf(s, "USBCMD reg: %08x\n", tmp_reg);

 tmp_reg = hw_read(ci, OP_PORTSC, ~0);
 seq_printf(s, "PORTSC reg: %08x\n", tmp_reg);

 if (ci->is_otg) {
  tmp_reg = hw_read_otgsc(ci, ~0);
  seq_printf(s, "OTGSC reg: %08x\n", tmp_reg);
 }

 return 0;
}
