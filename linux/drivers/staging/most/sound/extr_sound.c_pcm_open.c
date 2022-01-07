
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; struct channel* private_data; } ;
struct snd_pcm_runtime {int hw; } ;
struct most_channel_config {scalar_t__ direction; } ;
struct channel {int pcm_hardware; int playback_task; int id; int iface; struct snd_pcm_substream* substream; struct most_channel_config* cfg; } ;


 int EBUSY ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ MOST_CH_TX ;
 int PTR_ERR (int ) ;
 int comp ;
 int kthread_run (int ,struct channel*,char*) ;
 int kthread_stop (int ) ;
 scalar_t__ most_start_channel (int ,int ,int *) ;
 int playback_thread ;
 int pr_err (char*) ;

__attribute__((used)) static int pcm_open(struct snd_pcm_substream *substream)
{
 struct channel *channel = substream->private_data;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct most_channel_config *cfg = channel->cfg;

 channel->substream = substream;

 if (cfg->direction == MOST_CH_TX) {
  channel->playback_task = kthread_run(playback_thread, channel,
           "most_audio_playback");
  if (IS_ERR(channel->playback_task)) {
   pr_err("Couldn't start thread\n");
   return PTR_ERR(channel->playback_task);
  }
 }

 if (most_start_channel(channel->iface, channel->id, &comp)) {
  pr_err("most_start_channel() failed!\n");
  if (cfg->direction == MOST_CH_TX)
   kthread_stop(channel->playback_task);
  return -EBUSY;
 }

 runtime->hw = channel->pcm_hardware;
 return 0;
}
