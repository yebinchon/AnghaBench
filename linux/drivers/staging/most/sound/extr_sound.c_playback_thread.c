
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbo {int buffer_length; int virt_address; } ;
struct channel {int substream; scalar_t__ is_stream_running; int id; int iface; int playback_waitq; } ;


 int comp ;
 int copy_data (struct channel* const,struct mbo*) ;
 scalar_t__ kthread_should_stop () ;
 int memset (int ,int ,int ) ;
 struct mbo* most_get_mbo (int ,int ,int *) ;
 int most_submit_mbo (struct mbo*) ;
 int snd_pcm_period_elapsed (int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int playback_thread(void *data)
{
 struct channel *const channel = data;

 while (!kthread_should_stop()) {
  struct mbo *mbo = ((void*)0);
  bool period_elapsed = 0;

  wait_event_interruptible(
   channel->playback_waitq,
   kthread_should_stop() ||
   (channel->is_stream_running &&
    (mbo = most_get_mbo(channel->iface, channel->id,
          &comp))));
  if (!mbo)
   continue;

  if (channel->is_stream_running)
   period_elapsed = copy_data(channel, mbo);
  else
   memset(mbo->virt_address, 0, mbo->buffer_length);

  most_submit_mbo(mbo);
  if (period_elapsed)
   snd_pcm_period_elapsed(channel->substream);
 }

 return 0;
}
