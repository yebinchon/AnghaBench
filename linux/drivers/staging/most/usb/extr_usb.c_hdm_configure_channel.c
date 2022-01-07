
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u16 ;
struct most_interface {int num_channels; } ;
struct most_dev {int* is_channel_healthy; int* padding_active; unsigned int* ep_address; TYPE_2__* usb_device; struct most_channel_config* conf; int * suffix; TYPE_1__* clear_work; } ;
struct most_channel_config {unsigned int buffer_size; scalar_t__ data_type; int packets_per_xact; unsigned int extra_len; int num_buffers; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int channel; int ws; struct most_dev* mdev; } ;


 int EINVAL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ MOST_CH_ASYNC ;
 scalar_t__ MOST_CH_ISOC ;
 scalar_t__ MOST_CH_SYNC ;
 unsigned int USB_MTU ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*,...) ;
 unsigned int get_stream_frame_size (struct most_channel_config*) ;
 scalar_t__ start_sync_ep (TYPE_2__*,unsigned int) ;
 struct most_dev* to_mdev (struct most_interface*) ;
 scalar_t__ unlikely (int) ;
 int wq_clear_halt ;

__attribute__((used)) static int hdm_configure_channel(struct most_interface *iface, int channel,
     struct most_channel_config *conf)
{
 unsigned int num_frames;
 unsigned int frame_size;
 struct most_dev *mdev = to_mdev(iface);
 struct device *dev = &mdev->usb_device->dev;

 mdev->is_channel_healthy[channel] = 1;
 mdev->clear_work[channel].channel = channel;
 mdev->clear_work[channel].mdev = mdev;
 INIT_WORK(&mdev->clear_work[channel].ws, wq_clear_halt);

 if (unlikely(!iface || !conf)) {
  dev_err(dev, "Bad interface or config pointer.\n");
  return -EINVAL;
 }
 if (unlikely(channel < 0 || channel >= iface->num_channels)) {
  dev_err(dev, "Channel ID out of range.\n");
  return -EINVAL;
 }
 if (!conf->num_buffers || !conf->buffer_size) {
  dev_err(dev, "Misconfig: buffer size or #buffers zero.\n");
  return -EINVAL;
 }

 if (conf->data_type != MOST_CH_SYNC &&
     !(conf->data_type == MOST_CH_ISOC &&
       conf->packets_per_xact != 0xFF)) {
  mdev->padding_active[channel] = 0;





  goto exit;
 }

 mdev->padding_active[channel] = 1;

 frame_size = get_stream_frame_size(conf);
 if (frame_size == 0 || frame_size > USB_MTU) {
  dev_warn(dev, "Misconfig: frame size wrong\n");
  return -EINVAL;
 }

 num_frames = conf->buffer_size / frame_size;

 if (conf->buffer_size % frame_size) {
  u16 old_size = conf->buffer_size;

  conf->buffer_size = num_frames * frame_size;
  dev_warn(dev, "%s: fixed buffer size (%d -> %d)\n",
    mdev->suffix[channel], old_size, conf->buffer_size);
 }


 conf->extra_len = num_frames * (USB_MTU - frame_size);

exit:
 mdev->conf[channel] = *conf;
 if (conf->data_type == MOST_CH_ASYNC) {
  u16 ep = mdev->ep_address[channel];

  if (start_sync_ep(mdev->usb_device, ep) < 0)
   dev_warn(dev, "sync for ep%02x failed", ep);
 }
 return 0;
}
