
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct comedi_file* private_data; } ;
struct comedi_file {struct comedi_device* dev; } ;
struct comedi_device {int async_queue; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int comedi_fasync(int fd, struct file *file, int on)
{
 struct comedi_file *cfp = file->private_data;
 struct comedi_device *dev = cfp->dev;

 return fasync_helper(fd, file, on, &dev->async_queue);
}
