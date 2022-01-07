
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hdmi {void (* audio_abort_cb ) (struct device*) ;int lock; int display_enabled; int cfg; } ;
struct device {int dummy; } ;


 int EPERM ;
 struct omap_hdmi* dev_get_drvdata (struct device*) ;
 int hdmi_mode_has_audio (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hdmi_audio_startup(struct device *dev,
         void (*abort_cb)(struct device *dev))
{
 struct omap_hdmi *hd = dev_get_drvdata(dev);
 int ret = 0;

 mutex_lock(&hd->lock);

 if (!hdmi_mode_has_audio(&hd->cfg) || !hd->display_enabled) {
  ret = -EPERM;
  goto out;
 }

 hd->audio_abort_cb = abort_cb;

out:
 mutex_unlock(&hd->lock);

 return ret;
}
