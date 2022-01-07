
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int coherent_dma_mask; } ;
typedef int ssize_t ;


 int fls64 (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t consistent_dma_mask_bits_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 return sprintf(buf, "%d\n", fls64(dev->coherent_dma_mask));
}
