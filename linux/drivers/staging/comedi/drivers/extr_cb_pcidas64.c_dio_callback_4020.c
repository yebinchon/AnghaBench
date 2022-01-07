
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {scalar_t__ main_iobase; } ;
struct comedi_device {struct pcidas64_private* private; } ;


 int readw (scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int dio_callback_4020(struct comedi_device *dev,
        int dir, int port, int data, unsigned long iobase)
{
 struct pcidas64_private *devpriv = dev->private;

 if (dir) {
  writew(data, devpriv->main_iobase + iobase + 2 * port);
  return 0;
 }
 return readw(devpriv->main_iobase + iobase + 2 * port);
}
