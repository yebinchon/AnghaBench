
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wahc {int rpipe_mutex; int usb_dev; } ;
struct TYPE_2__ {int wRPipeIndex; } ;
struct wa_rpipe {TYPE_1__ descr; } ;
struct usb_host_endpoint {struct wa_rpipe* hcpriv; } ;


 int RPIPE_STALL ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_RPIPE ;
 int USB_REQ_CLEAR_FEATURE ;
 int USB_TYPE_CLASS ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

void rpipe_clear_feature_stalled(struct wahc *wa, struct usb_host_endpoint *ep)
{
 struct wa_rpipe *rpipe;

 mutex_lock(&wa->rpipe_mutex);
 rpipe = ep->hcpriv;
 if (rpipe != ((void*)0)) {
  u16 index = le16_to_cpu(rpipe->descr.wRPipeIndex);

  usb_control_msg(
   wa->usb_dev, usb_sndctrlpipe(wa->usb_dev, 0),
   USB_REQ_CLEAR_FEATURE,
   USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_RPIPE,
   RPIPE_STALL, index, ((void*)0), 0, USB_CTRL_SET_TIMEOUT);
 }
 mutex_unlock(&wa->rpipe_mutex);
}
