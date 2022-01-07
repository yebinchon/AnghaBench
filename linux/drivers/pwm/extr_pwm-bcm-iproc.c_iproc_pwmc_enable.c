
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iproc_pwmc {scalar_t__ base; } ;


 int IPROC_PWM_CTRL_EN_SHIFT (unsigned int) ;
 scalar_t__ IPROC_PWM_CTRL_OFFSET ;
 int ndelay (int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void iproc_pwmc_enable(struct iproc_pwmc *ip, unsigned int channel)
{
 u32 value;

 value = readl(ip->base + IPROC_PWM_CTRL_OFFSET);
 value |= 1 << IPROC_PWM_CTRL_EN_SHIFT(channel);
 writel(value, ip->base + IPROC_PWM_CTRL_OFFSET);


 ndelay(400);
}
