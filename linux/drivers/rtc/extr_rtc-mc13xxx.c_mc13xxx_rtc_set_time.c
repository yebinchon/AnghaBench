
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct mc13xxx_rtc {int valid; int mc13xxx; } ;
struct device {int dummy; } ;


 int MC13XXX_IRQ_RTCRST ;
 int MC13XXX_RTCDAY ;
 int MC13XXX_RTCTOD ;
 int MC13XXX_RTCTODA ;
 unsigned int SEC_PER_DAY ;
 struct mc13xxx_rtc* dev_get_drvdata (struct device*) ;
 unsigned int div_s64_rem (int ,unsigned int,unsigned int*) ;
 int mc13xxx_irq_ack (int ,int ) ;
 int mc13xxx_irq_unmask (int ,int ) ;
 int mc13xxx_lock (int ) ;
 int mc13xxx_reg_read (int ,int ,unsigned int*) ;
 int mc13xxx_reg_write (int ,int ,unsigned int) ;
 int mc13xxx_unlock (int ) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mc13xxx_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct mc13xxx_rtc *priv = dev_get_drvdata(dev);
 unsigned int seconds, days;
 unsigned int alarmseconds;
 int ret;

 days = div_s64_rem(rtc_tm_to_time64(tm), SEC_PER_DAY, &seconds);

 mc13xxx_lock(priv->mc13xxx);





 ret = mc13xxx_reg_read(priv->mc13xxx, MC13XXX_RTCTODA, &alarmseconds);
 if (unlikely(ret))
  goto out;

 if (alarmseconds < SEC_PER_DAY) {
  ret = mc13xxx_reg_write(priv->mc13xxx,
    MC13XXX_RTCTODA, 0x1ffff);
  if (unlikely(ret))
   goto out;
 }





 ret = mc13xxx_reg_write(priv->mc13xxx, MC13XXX_RTCTOD, 0);
 if (unlikely(ret))
  goto out;

 ret = mc13xxx_reg_write(priv->mc13xxx, MC13XXX_RTCDAY, days);
 if (unlikely(ret))
  goto out;

 ret = mc13xxx_reg_write(priv->mc13xxx, MC13XXX_RTCTOD, seconds);
 if (unlikely(ret))
  goto out;


 if (alarmseconds < SEC_PER_DAY) {
  ret = mc13xxx_reg_write(priv->mc13xxx,
    MC13XXX_RTCTODA, alarmseconds);
  if (unlikely(ret))
   goto out;
 }

 if (!priv->valid) {
  ret = mc13xxx_irq_ack(priv->mc13xxx, MC13XXX_IRQ_RTCRST);
  if (unlikely(ret))
   goto out;

  ret = mc13xxx_irq_unmask(priv->mc13xxx, MC13XXX_IRQ_RTCRST);
 }

out:
 priv->valid = !ret;

 mc13xxx_unlock(priv->mc13xxx);

 return ret;
}
