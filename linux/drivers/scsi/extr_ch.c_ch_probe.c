
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct scsi_device {scalar_t__ type; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int minor; int name; struct scsi_device* device; int ref; int lock; } ;
typedef TYPE_1__ scsi_changer ;


 scalar_t__ CH_MAX_DEVS ;
 int ENODEV ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 scalar_t__ IS_ERR (struct device*) ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int MKDEV (int ,int) ;
 int PTR_ERR (struct device*) ;
 int SCSI_CHANGER_MAJOR ;
 scalar_t__ TYPE_MEDIUM_CHANGER ;
 int ch_index_idr ;
 int ch_index_lock ;
 int ch_init_elem (TYPE_1__*) ;
 int ch_readconfig (TYPE_1__*) ;
 int ch_sysfs_class ;
 int dev_set_drvdata (struct device*,TYPE_1__*) ;
 struct device* device_create (int ,struct device*,int ,TYPE_1__*,char*,int) ;
 int device_destroy (int ,int ) ;
 int idr_alloc (int *,TYPE_1__*,int ,scalar_t__,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int idr_remove (int *,int) ;
 scalar_t__ init ;
 int kfree (TYPE_1__*) ;
 int kref_init (int *) ;
 TYPE_1__* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sdev_printk (int ,struct scsi_device*,char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (int,char*,int) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int ch_probe(struct device *dev)
{
 struct scsi_device *sd = to_scsi_device(dev);
 struct device *class_dev;
 int ret;
 scsi_changer *ch;

 if (sd->type != TYPE_MEDIUM_CHANGER)
  return -ENODEV;

 ch = kzalloc(sizeof(*ch), GFP_KERNEL);
 if (((void*)0) == ch)
  return -ENOMEM;

 idr_preload(GFP_KERNEL);
 spin_lock(&ch_index_lock);
 ret = idr_alloc(&ch_index_idr, ch, 0, CH_MAX_DEVS + 1, GFP_NOWAIT);
 spin_unlock(&ch_index_lock);
 idr_preload_end();

 if (ret < 0) {
  if (ret == -ENOSPC)
   ret = -ENODEV;
  goto free_ch;
 }

 ch->minor = ret;
 sprintf(ch->name,"ch%d",ch->minor);

 class_dev = device_create(ch_sysfs_class, dev,
      MKDEV(SCSI_CHANGER_MAJOR, ch->minor), ch,
      "s%s", ch->name);
 if (IS_ERR(class_dev)) {
  sdev_printk(KERN_WARNING, sd, "ch%d: device_create failed\n",
       ch->minor);
  ret = PTR_ERR(class_dev);
  goto remove_idr;
 }

 mutex_init(&ch->lock);
 kref_init(&ch->ref);
 ch->device = sd;
 ret = ch_readconfig(ch);
 if (ret)
  goto destroy_dev;
 if (init)
  ch_init_elem(ch);

 dev_set_drvdata(dev, ch);
 sdev_printk(KERN_INFO, sd, "Attached scsi changer %s\n", ch->name);

 return 0;
destroy_dev:
 device_destroy(ch_sysfs_class, MKDEV(SCSI_CHANGER_MAJOR, ch->minor));
remove_idr:
 idr_remove(&ch_index_idr, ch->minor);
free_ch:
 kfree(ch);
 return ret;
}
