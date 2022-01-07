
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m48t86_rtc_info {int data_reg; int index_reg; } ;
struct device {int dummy; } ;


 struct m48t86_rtc_info* dev_get_drvdata (struct device*) ;
 int writeb (unsigned char,int ) ;

__attribute__((used)) static void m48t86_writeb(struct device *dev,
     unsigned char value, unsigned long addr)
{
 struct m48t86_rtc_info *info = dev_get_drvdata(dev);

 writeb(addr, info->index_reg);
 writeb(value, info->data_reg);
}
