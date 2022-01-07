
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sound_adapter {int dev_list; } ;
struct most_interface {struct sound_adapter* priv; } ;
struct channel {int list; } ;


 int EINVAL ;
 struct channel* get_channel (struct most_interface*,int) ;
 int kfree (struct channel*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int pr_err (char*,int) ;
 int release_adapter (struct sound_adapter*) ;

__attribute__((used)) static int audio_disconnect_channel(struct most_interface *iface,
        int channel_id)
{
 struct channel *channel;
 struct sound_adapter *adpt = iface->priv;

 channel = get_channel(iface, channel_id);
 if (!channel) {
  pr_err("sound_disconnect_channel(), invalid channel %d\n",
         channel_id);
  return -EINVAL;
 }

 list_del(&channel->list);

 kfree(channel);
 if (list_empty(&adpt->dev_list))
  release_adapter(adpt);
 return 0;
}
