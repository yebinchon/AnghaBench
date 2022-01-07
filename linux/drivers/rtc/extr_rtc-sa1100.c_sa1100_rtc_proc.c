
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct sa1100_rtc {int rtsr; int rttr; } ;
struct device {int dummy; } ;


 struct sa1100_rtc* dev_get_drvdata (struct device*) ;
 int readl_relaxed (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int sa1100_rtc_proc(struct device *dev, struct seq_file *seq)
{
 struct sa1100_rtc *info = dev_get_drvdata(dev);

 seq_printf(seq, "trim/divider\t\t: 0x%08x\n", readl_relaxed(info->rttr));
 seq_printf(seq, "RTSR\t\t\t: 0x%08x\n", readl_relaxed(info->rtsr));

 return 0;
}
