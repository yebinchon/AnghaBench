
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbo {int hdm_channel_id; int ifp; } ;
struct channel {int substream; scalar_t__ is_stream_running; } ;


 int EINVAL ;
 int copy_data (struct channel*,struct mbo*) ;
 struct channel* get_channel (int ,int ) ;
 int most_put_mbo (struct mbo*) ;
 int pr_err (char*,int ) ;
 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static int audio_rx_completion(struct mbo *mbo)
{
 struct channel *channel = get_channel(mbo->ifp, mbo->hdm_channel_id);
 bool period_elapsed = 0;

 if (!channel) {
  pr_err("sound_rx_completion(), invalid channel %d\n",
         mbo->hdm_channel_id);
  return -EINVAL;
 }

 if (channel->is_stream_running)
  period_elapsed = copy_data(channel, mbo);

 most_put_mbo(mbo);

 if (period_elapsed)
  snd_pcm_period_elapsed(channel->substream);

 return 0;
}
