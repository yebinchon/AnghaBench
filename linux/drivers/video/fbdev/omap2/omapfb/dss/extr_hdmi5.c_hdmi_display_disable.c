
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct omap_dss_device {int dummy; } ;
struct TYPE_3__ {int display_enabled; int lock; int audio_playing_lock; } ;


 int DSSDBG (char*) ;
 TYPE_1__ hdmi ;
 int hdmi_power_off_full (struct omap_dss_device*) ;
 int hdmi_stop_audio_stream (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hdmi_display_disable(struct omap_dss_device *dssdev)
{
 unsigned long flags;

 DSSDBG("Enter hdmi_display_disable\n");

 mutex_lock(&hdmi.lock);

 spin_lock_irqsave(&hdmi.audio_playing_lock, flags);
 hdmi_stop_audio_stream(&hdmi);
 hdmi.display_enabled = 0;
 spin_unlock_irqrestore(&hdmi.audio_playing_lock, flags);

 hdmi_power_off_full(dssdev);

 mutex_unlock(&hdmi.lock);
}
