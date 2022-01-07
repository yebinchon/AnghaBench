
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_flags; int transfer_dma; } ;
struct rtl_usb {int rx_max_size; int in_ep; int udev; } ;
struct ieee80211_hw {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int _rtl_rx_completed ;
 int pr_err (char*) ;
 void* usb_alloc_coherent (int ,int ,int ,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,void*,int ,int ,struct rtl_usb*) ;
 int usb_rcvbulkpipe (int ,int ) ;

__attribute__((used)) static int _rtl_prep_rx_urb(struct ieee80211_hw *hw, struct rtl_usb *rtlusb,
         struct urb *urb, gfp_t gfp_mask)
{
 void *buf;

 buf = usb_alloc_coherent(rtlusb->udev, rtlusb->rx_max_size, gfp_mask,
     &urb->transfer_dma);
 if (!buf) {
  pr_err("Failed to usb_alloc_coherent!!\n");
  return -ENOMEM;
 }

 usb_fill_bulk_urb(urb, rtlusb->udev,
     usb_rcvbulkpipe(rtlusb->udev, rtlusb->in_ep),
     buf, rtlusb->rx_max_size, _rtl_rx_completed, rtlusb);
 urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

 return 0;
}
