
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxc_rtc_data {scalar_t__ ioaddr; } ;


 scalar_t__ SRTC_LPCR ;
 int SRTC_LPCR_ALP ;
 int SRTC_LPCR_WAE ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mxc_rtc_alarm_irq_enable_locked(struct mxc_rtc_data *pdata,
         unsigned int enable)
{
 u32 lp_cr = readl(pdata->ioaddr + SRTC_LPCR);

 if (enable)
  lp_cr |= (SRTC_LPCR_ALP | SRTC_LPCR_WAE);
 else
  lp_cr &= ~(SRTC_LPCR_ALP | SRTC_LPCR_WAE);

 writel(lp_cr, pdata->ioaddr + SRTC_LPCR);
}
