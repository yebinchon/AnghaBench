
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nidio96_private {int di_mite_ring; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct nidio96_private* private; } ;
struct TYPE_2__ {int prealloc_bufsz; int prealloc_buf; } ;


 int memset (int ,int,int ) ;
 int mite_buf_change (int ,struct comedi_subdevice*) ;

__attribute__((used)) static int ni_pcidio_change(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct nidio96_private *devpriv = dev->private;
 int ret;

 ret = mite_buf_change(devpriv->di_mite_ring, s);
 if (ret < 0)
  return ret;

 memset(s->async->prealloc_buf, 0xaa, s->async->prealloc_bufsz);

 return 0;
}
