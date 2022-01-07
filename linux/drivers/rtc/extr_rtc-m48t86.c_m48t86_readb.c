
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m48t86_rtc_info {int data_reg; int index_reg; } ;
struct device {int dummy; } ;


 struct m48t86_rtc_info* dev_get_drvdata (struct device*) ;
 unsigned char readb (int ) ;
 int writeb (unsigned long,int ) ;

__attribute__((used)) static unsigned char m48t86_readb(struct device *dev, unsigned long addr)
{
 struct m48t86_rtc_info *info = dev_get_drvdata(dev);
 unsigned char value;

 writeb(addr, info->index_reg);
 value = readb(info->data_reg);

 return value;
}
