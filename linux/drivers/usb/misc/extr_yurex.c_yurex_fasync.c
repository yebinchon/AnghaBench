
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_yurex {int async_queue; } ;
struct file {struct usb_yurex* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int yurex_fasync(int fd, struct file *file, int on)
{
 struct usb_yurex *dev;

 dev = file->private_data;
 return fasync_helper(fd, file, on, &dev->async_queue);
}
