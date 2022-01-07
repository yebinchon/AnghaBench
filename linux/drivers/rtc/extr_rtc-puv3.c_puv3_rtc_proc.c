
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct device {int dummy; } ;


 int RTC_RTSR ;
 int RTC_RTSR_HZE ;
 int readl (int ) ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static int puv3_rtc_proc(struct device *dev, struct seq_file *seq)
{
 seq_printf(seq, "periodic_IRQ\t: %s\n",
       (readl(RTC_RTSR) & RTC_RTSR_HZE) ? "yes" : "no");
 return 0;
}
