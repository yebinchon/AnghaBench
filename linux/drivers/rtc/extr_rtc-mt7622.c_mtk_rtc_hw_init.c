
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_rtc {int dummy; } ;


 int MTK_RTC_CTL ;
 int MTK_RTC_DEBNCE ;
 int MTK_RTC_KEY ;
 int MTK_RTC_PROT1 ;
 int MTK_RTC_PROT2 ;
 int MTK_RTC_PROT3 ;
 int MTK_RTC_PROT4 ;
 int MTK_RTC_PWRCHK1 ;
 int MTK_RTC_PWRCHK2 ;
 int RTC_DEBNCE_MASK ;
 int RTC_KEY_MAGIC ;
 int RTC_PROT1_MAGIC ;
 int RTC_PROT2_MAGIC ;
 int RTC_PROT3_MAGIC ;
 int RTC_PROT4_MAGIC ;
 int RTC_PWRCHK1_MAGIC ;
 int RTC_PWRCHK2_MAGIC ;
 int RTC_RC_STOP ;
 int mtk_clr (struct mtk_rtc*,int ,int ) ;
 int mtk_rmw (struct mtk_rtc*,int ,int ,int ) ;
 int mtk_w32 (struct mtk_rtc*,int ,int ) ;

__attribute__((used)) static void mtk_rtc_hw_init(struct mtk_rtc *hw)
{

 mtk_w32(hw, MTK_RTC_PWRCHK1, RTC_PWRCHK1_MAGIC);
 mtk_w32(hw, MTK_RTC_PWRCHK2, RTC_PWRCHK2_MAGIC);
 mtk_w32(hw, MTK_RTC_KEY, RTC_KEY_MAGIC);
 mtk_w32(hw, MTK_RTC_PROT1, RTC_PROT1_MAGIC);
 mtk_w32(hw, MTK_RTC_PROT2, RTC_PROT2_MAGIC);
 mtk_w32(hw, MTK_RTC_PROT3, RTC_PROT3_MAGIC);
 mtk_w32(hw, MTK_RTC_PROT4, RTC_PROT4_MAGIC);
 mtk_rmw(hw, MTK_RTC_DEBNCE, RTC_DEBNCE_MASK, 0);
 mtk_clr(hw, MTK_RTC_CTL, RTC_RC_STOP);
}
