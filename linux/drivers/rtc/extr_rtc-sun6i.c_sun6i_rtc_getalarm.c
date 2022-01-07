
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun6i_rtc_dev {int alarm; int lock; scalar_t__ base; } ;
struct rtc_wkalrm {int enabled; int pending; int time; } ;
struct device {int dummy; } ;


 int SUN6I_ALRM_EN_CNT_EN ;
 scalar_t__ SUN6I_ALRM_IRQ_EN ;
 scalar_t__ SUN6I_ALRM_IRQ_STA ;
 struct sun6i_rtc_dev* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int rtc_time_to_tm (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sun6i_rtc_getalarm(struct device *dev, struct rtc_wkalrm *wkalrm)
{
 struct sun6i_rtc_dev *chip = dev_get_drvdata(dev);
 unsigned long flags;
 u32 alrm_st;
 u32 alrm_en;

 spin_lock_irqsave(&chip->lock, flags);
 alrm_en = readl(chip->base + SUN6I_ALRM_IRQ_EN);
 alrm_st = readl(chip->base + SUN6I_ALRM_IRQ_STA);
 spin_unlock_irqrestore(&chip->lock, flags);

 wkalrm->enabled = !!(alrm_en & SUN6I_ALRM_EN_CNT_EN);
 wkalrm->pending = !!(alrm_st & SUN6I_ALRM_EN_CNT_EN);
 rtc_time_to_tm(chip->alarm, &wkalrm->time);

 return 0;
}
