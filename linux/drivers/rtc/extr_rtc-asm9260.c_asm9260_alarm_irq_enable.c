
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct asm9260_rtc_priv {scalar_t__ iobase; } ;


 int BM_AMR_OFF ;
 scalar_t__ HW_AMR ;
 struct asm9260_rtc_priv* dev_get_drvdata (struct device*) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static int asm9260_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct asm9260_rtc_priv *priv = dev_get_drvdata(dev);

 iowrite32(enabled ? 0 : BM_AMR_OFF, priv->iobase + HW_AMR);
 return 0;
}
