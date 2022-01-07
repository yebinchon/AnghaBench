
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct channel* private_data; } ;
struct channel {int id; int iface; int playback_task; TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ direction; } ;


 scalar_t__ MOST_CH_TX ;
 int comp ;
 int kthread_stop (int ) ;
 int most_stop_channel (int ,int ,int *) ;

__attribute__((used)) static int pcm_close(struct snd_pcm_substream *substream)
{
 struct channel *channel = substream->private_data;

 if (channel->cfg->direction == MOST_CH_TX)
  kthread_stop(channel->playback_task);
 most_stop_channel(channel->iface, channel->id, &comp);

 return 0;
}
