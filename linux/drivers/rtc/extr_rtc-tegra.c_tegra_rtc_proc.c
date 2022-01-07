
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct device {int driver; } ;


 int dev_name (struct device*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int tegra_rtc_proc(struct device *dev, struct seq_file *seq)
{
 if (!dev || !dev->driver)
  return 0;

 seq_printf(seq, "name\t\t: %s\n", dev_name(dev));

 return 0;
}
