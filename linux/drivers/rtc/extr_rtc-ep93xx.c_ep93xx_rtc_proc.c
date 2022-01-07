
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct device {int dummy; } ;


 int ep93xx_rtc_get_swcomp (struct device*,unsigned short*,unsigned short*) ;
 int seq_printf (struct seq_file*,char*,unsigned short) ;

__attribute__((used)) static int ep93xx_rtc_proc(struct device *dev, struct seq_file *seq)
{
 unsigned short preload, delete;

 ep93xx_rtc_get_swcomp(dev, &preload, &delete);

 seq_printf(seq, "preload\t\t: %d\n", preload);
 seq_printf(seq, "delete\t\t: %d\n", delete);

 return 0;
}
