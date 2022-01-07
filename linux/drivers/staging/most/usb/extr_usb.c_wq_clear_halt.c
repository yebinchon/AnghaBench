
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct most_dev {int* is_channel_healthy; int io_mutex; int iface; TYPE_2__* usb_device; int * ep_address; TYPE_1__* conf; int * busy_urbs; } ;
struct clear_hold_work {unsigned int channel; int pipe; struct most_dev* mdev; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {scalar_t__ data_type; scalar_t__ direction; } ;


 scalar_t__ MOST_CH_ASYNC ;
 scalar_t__ MOST_CH_RX ;
 int dev_warn (int *,char*) ;
 int most_resume_enqueue (int *,unsigned int) ;
 int most_stop_enqueue (int *,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct clear_hold_work* to_clear_hold_work (struct work_struct*) ;
 scalar_t__ usb_clear_halt (TYPE_2__*,int) ;
 int usb_kill_anchored_urbs (int *) ;
 int usb_sndbulkpipe (TYPE_2__*,int ) ;

__attribute__((used)) static void wq_clear_halt(struct work_struct *wq_obj)
{
 struct clear_hold_work *clear_work = to_clear_hold_work(wq_obj);
 struct most_dev *mdev = clear_work->mdev;
 unsigned int channel = clear_work->channel;
 int pipe = clear_work->pipe;

 mutex_lock(&mdev->io_mutex);
 most_stop_enqueue(&mdev->iface, channel);
 usb_kill_anchored_urbs(&mdev->busy_urbs[channel]);
 if (usb_clear_halt(mdev->usb_device, pipe))
  dev_warn(&mdev->usb_device->dev, "Failed to reset endpoint.\n");
 if (mdev->conf[channel].data_type == MOST_CH_ASYNC &&
     mdev->conf[channel].direction == MOST_CH_RX) {
  int peer = 1 - channel;
  int snd_pipe = usb_sndbulkpipe(mdev->usb_device,
            mdev->ep_address[peer]);
  usb_clear_halt(mdev->usb_device, snd_pipe);
 }
 mdev->is_channel_healthy[channel] = 1;
 most_resume_enqueue(&mdev->iface, channel);
 mutex_unlock(&mdev->io_mutex);
}
