
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct dwc2_hsotg* private; } ;
struct dwc2_hsotg {int dev; } ;


 int device_property_read_string (int ,char*,char const**) ;
 int seq_printf (struct seq_file*,char*,char const*) ;

__attribute__((used)) static int dr_mode_show(struct seq_file *seq, void *v)
{
 struct dwc2_hsotg *hsotg = seq->private;
 const char *dr_mode = "";

 device_property_read_string(hsotg->dev, "dr_mode", &dr_mode);
 seq_printf(seq, "%s\n", dr_mode);
 return 0;
}
