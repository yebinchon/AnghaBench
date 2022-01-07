
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int M48T86_NVRAM (unsigned int) ;
 int m48t86_writeb (struct device*,int ,int ) ;

__attribute__((used)) static int m48t86_nvram_write(void *priv, unsigned int off, void *buf,
         size_t count)
{
 struct device *dev = priv;
 unsigned int i;

 for (i = 0; i < count; i++)
  m48t86_writeb(dev, ((u8 *)buf)[i], M48T86_NVRAM(off + i));

 return 0;
}
