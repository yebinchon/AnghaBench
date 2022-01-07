
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct platform_device {int dummy; } ;


 int dsi_dump_dsidev_regs (struct platform_device*,struct seq_file*) ;
 struct platform_device* dsi_get_dsidev_from_id (int ) ;

__attribute__((used)) static void dsi1_dump_regs(struct seq_file *s)
{
 struct platform_device *dsidev = dsi_get_dsidev_from_id(0);

 dsi_dump_dsidev_regs(dsidev, s);
}
