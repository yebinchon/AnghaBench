
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned short*,int) ;
 int pcl816_ai_next_chan (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static void transfer_from_dma_buf(struct comedi_device *dev,
      struct comedi_subdevice *s,
      unsigned short *ptr,
      unsigned int bufptr, unsigned int len)
{
 unsigned short val;
 int i;

 for (i = 0; i < len; i++) {
  val = ptr[bufptr++];
  comedi_buf_write_samples(s, &val, 1);

  if (!pcl816_ai_next_chan(dev, s))
   return;
 }
}
