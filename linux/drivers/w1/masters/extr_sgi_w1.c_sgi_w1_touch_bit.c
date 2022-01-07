
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sgi_w1_device {int mcr; } ;


 int MCR_PACK (int,int) ;
 scalar_t__ sgi_w1_wait (int ) ;
 int udelay (int) ;
 int writel (int ,int ) ;

__attribute__((used)) static u8 sgi_w1_touch_bit(void *data, u8 bit)
{
 struct sgi_w1_device *dev = data;
 u8 ret;

 if (bit)
  writel(MCR_PACK(6, 13), dev->mcr);
 else
  writel(MCR_PACK(80, 30), dev->mcr);

 ret = sgi_w1_wait(dev->mcr);
 if (bit)
  udelay(100);
 return ret;
}
