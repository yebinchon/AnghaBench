
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sgi_w1_device {int mcr; } ;


 int MCR_PACK (int,int) ;
 int sgi_w1_wait (int ) ;
 int udelay (int) ;
 int writel (int ,int ) ;

__attribute__((used)) static u8 sgi_w1_reset_bus(void *data)
{
 struct sgi_w1_device *dev = data;
 u8 ret;

 writel(MCR_PACK(520, 65), dev->mcr);
 ret = sgi_w1_wait(dev->mcr);
 udelay(500);
 return ret;
}
