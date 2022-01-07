
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct m48t59_private {scalar_t__ ioaddr; } ;
struct device {int dummy; } ;


 struct m48t59_private* dev_get_drvdata (struct device*) ;
 int readb (scalar_t__) ;

__attribute__((used)) static u8
m48t59_mem_readb(struct device *dev, u32 ofs)
{
 struct m48t59_private *m48t59 = dev_get_drvdata(dev);

 return readb(m48t59->ioaddr+ofs);
}
