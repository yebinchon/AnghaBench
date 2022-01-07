
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct urb {int actual_length; int transfer_buffer_length; TYPE_2__* ep; TYPE_1__* dev; struct api_context* context; } ;
struct api_context {int status; int done; } ;
struct TYPE_6__ {int comm; } ;
struct TYPE_5__ {int desc; } ;
struct TYPE_4__ {int dev; } ;


 int ENOENT ;
 int ETIMEDOUT ;
 int GFP_NOIO ;
 unsigned long MAX_SCHEDULE_TIMEOUT ;
 TYPE_3__* current ;
 int dev_dbg (int *,char*,int ,int ,char*,int,int ) ;
 int init_completion (int *) ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ unlikely (int) ;
 int usb_endpoint_num (int *) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;
 scalar_t__ usb_urb_dir_in (struct urb*) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int usb_start_wait_urb(struct urb *urb, int timeout, int *actual_length)
{
 struct api_context ctx;
 unsigned long expire;
 int retval;

 init_completion(&ctx.done);
 urb->context = &ctx;
 urb->actual_length = 0;
 retval = usb_submit_urb(urb, GFP_NOIO);
 if (unlikely(retval))
  goto out;

 expire = timeout ? msecs_to_jiffies(timeout) : MAX_SCHEDULE_TIMEOUT;
 if (!wait_for_completion_timeout(&ctx.done, expire)) {
  usb_kill_urb(urb);
  retval = (ctx.status == -ENOENT ? -ETIMEDOUT : ctx.status);

  dev_dbg(&urb->dev->dev,
   "%s timed out on ep%d%s len=%u/%u\n",
   current->comm,
   usb_endpoint_num(&urb->ep->desc),
   usb_urb_dir_in(urb) ? "in" : "out",
   urb->actual_length,
   urb->transfer_buffer_length);
 } else
  retval = ctx.status;
out:
 if (actual_length)
  *actual_length = urb->actual_length;

 usb_free_urb(urb);
 return retval;
}
