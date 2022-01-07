
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl726_private {scalar_t__ cmd_running; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct pcl726_private* private; } ;



__attribute__((used)) static int pcl726_intr_cancel(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 struct pcl726_private *devpriv = dev->private;

 devpriv->cmd_running = 0;

 return 0;
}
