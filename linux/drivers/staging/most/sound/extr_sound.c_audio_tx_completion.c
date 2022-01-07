
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_interface {int dummy; } ;
struct channel {int playback_waitq; } ;


 int EINVAL ;
 struct channel* get_channel (struct most_interface*,int) ;
 int pr_err (char*,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int audio_tx_completion(struct most_interface *iface, int channel_id)
{
 struct channel *channel = get_channel(iface, channel_id);

 if (!channel) {
  pr_err("sound_tx_completion(), invalid channel %d\n",
         channel_id);
  return -EINVAL;
 }

 wake_up_interruptible(&channel->playback_waitq);

 return 0;
}
