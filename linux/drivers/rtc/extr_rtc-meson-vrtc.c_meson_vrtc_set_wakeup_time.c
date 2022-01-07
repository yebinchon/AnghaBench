
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_vrtc_data {int io_alarm; } ;


 int writel_relaxed (unsigned long,int ) ;

__attribute__((used)) static void meson_vrtc_set_wakeup_time(struct meson_vrtc_data *vrtc,
           unsigned long time)
{
 writel_relaxed(time, vrtc->io_alarm);
}
