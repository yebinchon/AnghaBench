
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct comedi_device {unsigned int minor; int class_dev; int mutex; } ;


 int COMEDI_MAJOR ;
 unsigned int COMEDI_NUM_BOARD_MINORS ;
 int EBUSY ;
 int ENOMEM ;
 struct comedi_device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct device*) ;
 int MKDEV (int ,unsigned int) ;
 struct comedi_device** comedi_board_minor_table ;
 int comedi_board_minor_table_lock ;
 int comedi_class ;
 int comedi_dev_put (struct comedi_device*) ;
 int comedi_device_cleanup (struct comedi_device*) ;
 int comedi_device_init (struct comedi_device*) ;
 unsigned int comedi_num_legacy_minors ;
 int comedi_set_hw_dev (struct comedi_device*,struct device*) ;
 int dev_err (struct device*,char*) ;
 struct device* device_create (int ,struct device*,int ,int *,char*,unsigned int) ;
 int get_device (struct device*) ;
 struct comedi_device* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct comedi_device *comedi_alloc_board_minor(struct device *hardware_device)
{
 struct comedi_device *dev;
 struct device *csdev;
 unsigned int i;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ERR_PTR(-ENOMEM);
 comedi_device_init(dev);
 comedi_set_hw_dev(dev, hardware_device);
 mutex_lock(&dev->mutex);
 mutex_lock(&comedi_board_minor_table_lock);
 for (i = hardware_device ? comedi_num_legacy_minors : 0;
      i < COMEDI_NUM_BOARD_MINORS; ++i) {
  if (!comedi_board_minor_table[i]) {
   comedi_board_minor_table[i] = dev;
   break;
  }
 }
 mutex_unlock(&comedi_board_minor_table_lock);
 if (i == COMEDI_NUM_BOARD_MINORS) {
  mutex_unlock(&dev->mutex);
  comedi_device_cleanup(dev);
  comedi_dev_put(dev);
  dev_err(hardware_device,
   "ran out of minor numbers for board device files\n");
  return ERR_PTR(-EBUSY);
 }
 dev->minor = i;
 csdev = device_create(comedi_class, hardware_device,
         MKDEV(COMEDI_MAJOR, i), ((void*)0), "comedi%i", i);
 if (!IS_ERR(csdev))
  dev->class_dev = get_device(csdev);


 return dev;
}
