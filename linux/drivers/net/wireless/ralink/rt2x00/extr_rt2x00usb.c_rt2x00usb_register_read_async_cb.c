
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; struct rt2x00_async_read_data* context; } ;
struct rt2x00_async_read_data {TYPE_1__* rt2x00dev; int reg; scalar_t__ (* callback ) (TYPE_1__*,int ,int ) ;} ;
struct TYPE_2__ {int anchor; } ;


 int GFP_ATOMIC ;
 int kfree (struct rt2x00_async_read_data*) ;
 int le32_to_cpu (int ) ;
 scalar_t__ stub1 (TYPE_1__*,int ,int ) ;
 int usb_anchor_urb (struct urb*,int ) ;
 scalar_t__ usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static void rt2x00usb_register_read_async_cb(struct urb *urb)
{
 struct rt2x00_async_read_data *rd = urb->context;
 if (rd->callback(rd->rt2x00dev, urb->status, le32_to_cpu(rd->reg))) {
  usb_anchor_urb(urb, rd->rt2x00dev->anchor);
  if (usb_submit_urb(urb, GFP_ATOMIC) < 0) {
   usb_unanchor_urb(urb);
   kfree(rd);
  }
 } else
  kfree(rd);
}
