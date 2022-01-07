
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int transfer_buffer_length; int transfer_buffer; } ;
struct ufx_data {int usb_active; TYPE_2__* info; } ;
struct TYPE_3__ {int xres; int yres; } ;
struct TYPE_4__ {TYPE_1__ var; } ;


 size_t ALIGN (int,int) ;
 int BUG_ON (int) ;
 int EINVAL ;
 int atomic_read (int *) ;
 int check_warn_return (int,char*) ;
 int memset (int ,int ,int) ;
 int min (int,int) ;
 int pr_warn (char*) ;
 struct urb* ufx_get_urb (struct ufx_data*) ;
 int ufx_raw_rect (struct ufx_data*,int ,int,int,int,int) ;
 int ufx_submit_urb (struct ufx_data*,struct urb*,int) ;

__attribute__((used)) static int ufx_handle_damage(struct ufx_data *dev, int x, int y,
 int width, int height)
{
 size_t packed_line_len = ALIGN((width * 2), 4);
 int len, status, urb_lines, start_line = 0;

 if ((width <= 0) || (height <= 0) ||
     (x + width > dev->info->var.xres) ||
     (y + height > dev->info->var.yres))
  return -EINVAL;

 if (!atomic_read(&dev->usb_active))
  return 0;

 while (start_line < height) {
  struct urb *urb = ufx_get_urb(dev);
  if (!urb) {
   pr_warn("ufx_handle_damage unable to get urb");
   return 0;
  }


  BUG_ON(urb->transfer_buffer_length < (24 + (width * 2)));


  urb_lines = (urb->transfer_buffer_length - 24) / packed_line_len;


  urb_lines = min(urb_lines, (height - start_line));

  memset(urb->transfer_buffer, 0, urb->transfer_buffer_length);

  ufx_raw_rect(dev, urb->transfer_buffer, x, (y + start_line), width, urb_lines);
  len = 24 + (packed_line_len * urb_lines);

  status = ufx_submit_urb(dev, urb, len);
  check_warn_return(status, "Error submitting URB");

  start_line += urb_lines;
 }

 return 0;
}
