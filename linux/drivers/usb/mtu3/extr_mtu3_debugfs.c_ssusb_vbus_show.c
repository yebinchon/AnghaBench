
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otg_switch_mtk {int vbus; } ;
struct ssusb_mtk {struct otg_switch_mtk otg_switch; } ;
struct seq_file {struct ssusb_mtk* private; } ;


 scalar_t__ regulator_is_enabled (int ) ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static int ssusb_vbus_show(struct seq_file *sf, void *unused)
{
 struct ssusb_mtk *ssusb = sf->private;
 struct otg_switch_mtk *otg_sx = &ssusb->otg_switch;

 seq_printf(sf, "vbus state: %s\n(echo on/off)\n",
     regulator_is_enabled(otg_sx->vbus) ? "on" : "off");

 return 0;
}
