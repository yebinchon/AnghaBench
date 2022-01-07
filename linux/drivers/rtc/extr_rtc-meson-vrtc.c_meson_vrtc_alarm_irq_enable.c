
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_vrtc_data {unsigned int enabled; } ;
struct device {int dummy; } ;


 struct meson_vrtc_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int meson_vrtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct meson_vrtc_data *vrtc = dev_get_drvdata(dev);

 vrtc->enabled = enabled;
 return 0;
}
