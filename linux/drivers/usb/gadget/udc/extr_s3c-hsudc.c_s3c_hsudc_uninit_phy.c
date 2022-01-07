
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int S3C2443_PHYPWR ;
 int S3C2443_PHYPWR_FSUSPEND ;
 int S3C2443_PWRCFG ;
 int S3C2443_PWRCFG_USBPHY ;
 int S3C2443_UCLKCON ;
 int S3C2443_UCLKCON_FUNC_CLKEN ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void s3c_hsudc_uninit_phy(void)
{
 u32 cfg;

 cfg = readl(S3C2443_PWRCFG) & ~S3C2443_PWRCFG_USBPHY;
 writel(cfg, S3C2443_PWRCFG);

 writel(S3C2443_PHYPWR_FSUSPEND, S3C2443_PHYPWR);

 cfg = readl(S3C2443_UCLKCON) & ~S3C2443_UCLKCON_FUNC_CLKEN;
 writel(cfg, S3C2443_UCLKCON);
}
