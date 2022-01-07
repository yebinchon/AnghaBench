
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;


 int OXU_ASO ;
 int OXU_ASO_OP ;
 int OXU_CHIPIRQEN_CLR ;
 int OXU_CHIPIRQEN_SET ;
 int OXU_CHIPIRQSTATUS ;
 int OXU_CLKCTRL_SET ;
 int OXU_COMPARATOR ;
 int OXU_HOSTIFCONFIG ;
 int OXU_OVRCCURPUPDEN ;
 int OXU_PIOBURSTREADCTRL ;
 int OXU_SOFTRESET ;
 int OXU_SPHPOEN ;
 int OXU_SRESET ;
 int OXU_SYSCLKEN ;
 int OXU_USBOTGCLKEN ;
 int OXU_USBOTGLPWUI ;
 int OXU_USBSPHLPWUI ;
 int oxu_readl (void*,int ) ;
 int oxu_writel (void*,int ,int) ;

__attribute__((used)) static void oxu_configuration(struct platform_device *pdev, void *base)
{
 u32 tmp;




 oxu_writel(base, OXU_HOSTIFCONFIG, 0x0000037D);
 oxu_writel(base, OXU_SOFTRESET, OXU_SRESET);
 oxu_writel(base, OXU_HOSTIFCONFIG, 0x0000037D);

 tmp = oxu_readl(base, OXU_PIOBURSTREADCTRL);
 oxu_writel(base, OXU_PIOBURSTREADCTRL, tmp | 0x0040);

 oxu_writel(base, OXU_ASO, OXU_SPHPOEN | OXU_OVRCCURPUPDEN |
     OXU_COMPARATOR | OXU_ASO_OP);

 tmp = oxu_readl(base, OXU_CLKCTRL_SET);
 oxu_writel(base, OXU_CLKCTRL_SET, tmp | OXU_SYSCLKEN | OXU_USBOTGCLKEN);


 oxu_writel(base, OXU_CHIPIRQEN_CLR, 0xff);


 oxu_writel(base, OXU_CHIPIRQSTATUS, 0xff);


 oxu_writel(base, OXU_CHIPIRQEN_SET, OXU_USBSPHLPWUI | OXU_USBOTGLPWUI);
}
