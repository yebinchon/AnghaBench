
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int ISR ;
 int rtl92e_readl (struct net_device*,int ) ;
 int rtl92e_writel (struct net_device*,int ,int ) ;

void rtl92e_ack_irq(struct net_device *dev, u32 *p_inta, u32 *p_intb)
{
 *p_inta = rtl92e_readl(dev, ISR);
 rtl92e_writel(dev, ISR, *p_inta);
}
