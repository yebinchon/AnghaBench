
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct urb {int transfer_flags; int transfer_dma; } ;
struct most_interface {int num_channels; } ;
struct most_dev {int io_mutex; TYPE_1__* usb_device; int * busy_urbs; int * ep_address; scalar_t__* padding_active; struct most_channel_config* conf; } ;
struct most_channel_config {int direction; scalar_t__ data_type; unsigned long extra_len; } ;
struct mbo {unsigned long buffer_length; void* virt_address; int bus_address; } ;
struct TYPE_4__ {int dev; } ;


 int ECHRNG ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 scalar_t__ MOST_CH_ISOC ;
 scalar_t__ MOST_CH_SYNC ;
 int MOST_CH_TX ;
 int NO_ISOCHRONOUS_URB ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int URB_ZERO_PACKET ;
 int dev_err (int *,char*,int) ;
 scalar_t__ hdm_add_padding (struct most_dev*,int,struct mbo*) ;
 int hdm_read_completion ;
 int hdm_write_completion ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct most_dev* to_mdev (struct most_interface*) ;
 scalar_t__ unlikely (int) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,TYPE_1__*,int ,void*,unsigned long,int ,struct mbo*) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvbulkpipe (TYPE_1__*,int ) ;
 int usb_sndbulkpipe (TYPE_1__*,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int hdm_enqueue(struct most_interface *iface, int channel,
         struct mbo *mbo)
{
 struct most_dev *mdev;
 struct most_channel_config *conf;
 int retval = 0;
 struct urb *urb;
 unsigned long length;
 void *virt_address;

 if (unlikely(!iface || !mbo))
  return -EIO;
 if (unlikely(iface->num_channels <= channel || channel < 0))
  return -ECHRNG;

 mdev = to_mdev(iface);
 conf = &mdev->conf[channel];

 mutex_lock(&mdev->io_mutex);
 if (!mdev->usb_device) {
  retval = -ENODEV;
  goto unlock_io_mutex;
 }

 urb = usb_alloc_urb(NO_ISOCHRONOUS_URB, GFP_ATOMIC);
 if (!urb) {
  retval = -ENOMEM;
  goto unlock_io_mutex;
 }

 if ((conf->direction & MOST_CH_TX) && mdev->padding_active[channel] &&
     hdm_add_padding(mdev, channel, mbo)) {
  retval = -EIO;
  goto err_free_urb;
 }

 urb->transfer_dma = mbo->bus_address;
 virt_address = mbo->virt_address;
 length = mbo->buffer_length;

 if (conf->direction & MOST_CH_TX) {
  usb_fill_bulk_urb(urb, mdev->usb_device,
      usb_sndbulkpipe(mdev->usb_device,
        mdev->ep_address[channel]),
      virt_address,
      length,
      hdm_write_completion,
      mbo);
  if (conf->data_type != MOST_CH_ISOC &&
      conf->data_type != MOST_CH_SYNC)
   urb->transfer_flags |= URB_ZERO_PACKET;
 } else {
  usb_fill_bulk_urb(urb, mdev->usb_device,
      usb_rcvbulkpipe(mdev->usb_device,
        mdev->ep_address[channel]),
      virt_address,
      length + conf->extra_len,
      hdm_read_completion,
      mbo);
 }
 urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

 usb_anchor_urb(urb, &mdev->busy_urbs[channel]);

 retval = usb_submit_urb(urb, GFP_KERNEL);
 if (retval) {
  dev_err(&mdev->usb_device->dev,
   "URB submit failed with error %d.\n", retval);
  goto err_unanchor_urb;
 }
 goto unlock_io_mutex;

err_unanchor_urb:
 usb_unanchor_urb(urb);
err_free_urb:
 usb_free_urb(urb);
unlock_io_mutex:
 mutex_unlock(&mdev->io_mutex);
 return retval;
}
