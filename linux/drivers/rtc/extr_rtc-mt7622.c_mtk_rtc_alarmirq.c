
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_rtc {int rtc; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MTK_RTC_AL_CTL ;
 int MTK_RTC_INT ;
 int RTC_AF ;
 int RTC_INT_AL_STA ;
 int RTC_IRQF ;
 int mtk_r32 (struct mtk_rtc*,int ) ;
 int mtk_w32 (struct mtk_rtc*,int ,int) ;
 int rtc_update_irq (int ,int,int) ;

__attribute__((used)) static irqreturn_t mtk_rtc_alarmirq(int irq, void *id)
{
 struct mtk_rtc *hw = (struct mtk_rtc *)id;
 u32 irq_sta;

 irq_sta = mtk_r32(hw, MTK_RTC_INT);
 if (irq_sta & RTC_INT_AL_STA) {

  mtk_w32(hw, MTK_RTC_AL_CTL, 0);
  rtc_update_irq(hw->rtc, 1, RTC_IRQF | RTC_AF);


  mtk_w32(hw, MTK_RTC_INT, RTC_INT_AL_STA);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
