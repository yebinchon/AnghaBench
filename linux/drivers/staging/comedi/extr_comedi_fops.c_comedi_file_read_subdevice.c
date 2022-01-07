
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct comedi_file* private_data; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_file {int read_subdev; } ;


 struct comedi_subdevice* READ_ONCE (int ) ;
 int comedi_file_check (struct file*) ;

__attribute__((used)) static struct comedi_subdevice *comedi_file_read_subdevice(struct file *file)
{
 struct comedi_file *cfp = file->private_data;

 comedi_file_check(file);
 return READ_ONCE(cfp->read_subdev);
}
