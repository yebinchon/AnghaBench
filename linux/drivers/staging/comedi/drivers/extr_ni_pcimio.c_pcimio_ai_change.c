
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int ai_mite_ring; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct ni_private* private; } ;


 int mite_buf_change (int ,struct comedi_subdevice*) ;

__attribute__((used)) static int pcimio_ai_change(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct ni_private *devpriv = dev->private;
 int ret;

 ret = mite_buf_change(devpriv->ai_mite_ring, s);
 if (ret < 0)
  return ret;

 return 0;
}
