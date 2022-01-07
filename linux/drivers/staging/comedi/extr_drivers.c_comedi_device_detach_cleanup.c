
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_subdevice* readback; struct comedi_subdevice* async; struct comedi_subdevice* private; } ;
struct comedi_device {int n_subdevices; int ioenabled; int * close; int * open; int * write_subdev; int * read_subdev; scalar_t__ irq; scalar_t__ iolen; scalar_t__ iobase; int * mmio; int * board_ptr; int * board_name; int * driver; struct comedi_subdevice* pacer; struct comedi_subdevice* private; struct comedi_subdevice* subdevices; int mutex; int attach_lock; } ;


 int comedi_buf_alloc (struct comedi_device*,struct comedi_subdevice*,int ) ;
 scalar_t__ comedi_can_auto_free_spriv (struct comedi_subdevice*) ;
 int comedi_clear_hw_dev (struct comedi_device*) ;
 int comedi_free_subdevice_minor (struct comedi_subdevice*) ;
 int kfree (struct comedi_subdevice*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void comedi_device_detach_cleanup(struct comedi_device *dev)
{
 int i;
 struct comedi_subdevice *s;

 lockdep_assert_held(&dev->attach_lock);
 lockdep_assert_held(&dev->mutex);
 if (dev->subdevices) {
  for (i = 0; i < dev->n_subdevices; i++) {
   s = &dev->subdevices[i];
   if (comedi_can_auto_free_spriv(s))
    kfree(s->private);
   comedi_free_subdevice_minor(s);
   if (s->async) {
    comedi_buf_alloc(dev, s, 0);
    kfree(s->async);
   }
   kfree(s->readback);
  }
  kfree(dev->subdevices);
  dev->subdevices = ((void*)0);
  dev->n_subdevices = 0;
 }
 kfree(dev->private);
 kfree(dev->pacer);
 dev->private = ((void*)0);
 dev->pacer = ((void*)0);
 dev->driver = ((void*)0);
 dev->board_name = ((void*)0);
 dev->board_ptr = ((void*)0);
 dev->mmio = ((void*)0);
 dev->iobase = 0;
 dev->iolen = 0;
 dev->ioenabled = 0;
 dev->irq = 0;
 dev->read_subdev = ((void*)0);
 dev->write_subdev = ((void*)0);
 dev->open = ((void*)0);
 dev->close = ((void*)0);
 comedi_clear_hw_dev(dev);
}
