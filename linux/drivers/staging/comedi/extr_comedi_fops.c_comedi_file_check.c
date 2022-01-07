
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct comedi_file* private_data; } ;
struct comedi_file {scalar_t__ last_attached; scalar_t__ last_detach_count; struct comedi_device* dev; } ;
struct comedi_device {scalar_t__ attached; scalar_t__ detach_count; } ;


 int comedi_file_reset (struct file*) ;

__attribute__((used)) static void comedi_file_check(struct file *file)
{
 struct comedi_file *cfp = file->private_data;
 struct comedi_device *dev = cfp->dev;

 if (cfp->last_attached != dev->attached ||
     cfp->last_detach_count != dev->detach_count)
  comedi_file_reset(file);
}
