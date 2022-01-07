
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ manual_drd_enabled; } ;
struct ssusb_mtk {TYPE_1__ otg_switch; scalar_t__ is_host; } ;
struct seq_file {struct ssusb_mtk* private; } ;


 int seq_printf (struct seq_file*,char*,char*,char*) ;

__attribute__((used)) static int ssusb_mode_show(struct seq_file *sf, void *unused)
{
 struct ssusb_mtk *ssusb = sf->private;

 seq_printf(sf, "current mode: %s(%s drd)\n(echo device/host)\n",
     ssusb->is_host ? "host" : "device",
     ssusb->otg_switch.manual_drd_enabled ? "manual" : "auto");

 return 0;
}
