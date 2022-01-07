
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int minor; scalar_t__ class_dev; } ;


 int COMEDI_MAJOR ;
 int MKDEV (int ,int ) ;
 int comedi_class ;
 int comedi_dev_put (struct comedi_device*) ;
 int comedi_device_cleanup (struct comedi_device*) ;
 int device_destroy (int ,int ) ;

__attribute__((used)) static void comedi_free_board_dev(struct comedi_device *dev)
{
 if (dev) {
  comedi_device_cleanup(dev);
  if (dev->class_dev) {
   device_destroy(comedi_class,
           MKDEV(COMEDI_MAJOR, dev->minor));
  }
  comedi_dev_put(dev);
 }
}
