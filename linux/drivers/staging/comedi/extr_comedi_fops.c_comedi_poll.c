
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {struct comedi_file* private_data; } ;
struct comedi_subdevice {TYPE_2__* async; struct file* busy; } ;
struct comedi_file {struct comedi_device* dev; } ;
struct comedi_device {int attach_lock; int class_dev; int attached; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ cmd; int wait_head; } ;


 int CMDF_WRITE ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 scalar_t__ comedi_buf_read_n_available (struct comedi_subdevice*) ;
 unsigned int comedi_buf_write_n_available (struct comedi_subdevice*) ;
 unsigned int comedi_bytes_per_sample (struct comedi_subdevice*) ;
 struct comedi_subdevice* comedi_file_read_subdevice (struct file*) ;
 struct comedi_subdevice* comedi_file_write_subdevice (struct file*) ;
 int comedi_is_subdevice_running (struct comedi_subdevice*) ;
 int dev_dbg (int ,char*) ;
 int down_read (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int up_read (int *) ;

__attribute__((used)) static __poll_t comedi_poll(struct file *file, poll_table *wait)
{
 __poll_t mask = 0;
 struct comedi_file *cfp = file->private_data;
 struct comedi_device *dev = cfp->dev;
 struct comedi_subdevice *s, *s_read;

 down_read(&dev->attach_lock);

 if (!dev->attached) {
  dev_dbg(dev->class_dev, "no driver attached\n");
  goto done;
 }

 s = comedi_file_read_subdevice(file);
 s_read = s;
 if (s && s->async) {
  poll_wait(file, &s->async->wait_head, wait);
  if (s->busy != file || !comedi_is_subdevice_running(s) ||
      (s->async->cmd.flags & CMDF_WRITE) ||
      comedi_buf_read_n_available(s) > 0)
   mask |= EPOLLIN | EPOLLRDNORM;
 }

 s = comedi_file_write_subdevice(file);
 if (s && s->async) {
  unsigned int bps = comedi_bytes_per_sample(s);

  if (s != s_read)
   poll_wait(file, &s->async->wait_head, wait);
  if (s->busy != file || !comedi_is_subdevice_running(s) ||
      !(s->async->cmd.flags & CMDF_WRITE) ||
      comedi_buf_write_n_available(s) >= bps)
   mask |= EPOLLOUT | EPOLLWRNORM;
 }

done:
 up_read(&dev->attach_lock);
 return mask;
}
