
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCF_GPT_GMS0 ;
 unsigned int MCF_GPT_GMS_OCPW (int) ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;

__attribute__((used)) static void wdt_keepalive(void)
{
 unsigned int gms0;

 gms0 = __raw_readl(MCF_GPT_GMS0);
 gms0 |= MCF_GPT_GMS_OCPW(0xA5);
 __raw_writel(gms0, MCF_GPT_GMS0);
}
