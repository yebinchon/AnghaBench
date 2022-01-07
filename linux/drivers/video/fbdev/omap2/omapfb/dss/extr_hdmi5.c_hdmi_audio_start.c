
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hdmi {int audio_playing; int audio_playing_lock; scalar_t__ display_enabled; int cfg; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 struct omap_hdmi* dev_get_drvdata (struct device*) ;
 int hdmi_mode_has_audio (int *) ;
 int hdmi_start_audio_stream (struct omap_hdmi*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hdmi_audio_start(struct device *dev)
{
 struct omap_hdmi *hd = dev_get_drvdata(dev);
 unsigned long flags;

 WARN_ON(!hdmi_mode_has_audio(&hd->cfg));

 spin_lock_irqsave(&hd->audio_playing_lock, flags);

 if (hd->display_enabled)
  hdmi_start_audio_stream(hd);
 hd->audio_playing = 1;

 spin_unlock_irqrestore(&hd->audio_playing_lock, flags);
 return 0;
}
