
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct device {int dummy; } ;


 int M48T86_B ;
 unsigned char M48T86_B_DM ;
 int M48T86_D ;
 unsigned char M48T86_D_VRT ;
 unsigned char m48t86_readb (struct device*,int ) ;
 int seq_printf (struct seq_file*,char*,char*) ;

__attribute__((used)) static int m48t86_rtc_proc(struct device *dev, struct seq_file *seq)
{
 unsigned char reg;

 reg = m48t86_readb(dev, M48T86_B);

 seq_printf(seq, "mode\t\t: %s\n",
     (reg & M48T86_B_DM) ? "binary" : "bcd");

 reg = m48t86_readb(dev, M48T86_D);

 seq_printf(seq, "battery\t\t: %s\n",
     (reg & M48T86_D_VRT) ? "ok" : "exhausted");

 return 0;
}
