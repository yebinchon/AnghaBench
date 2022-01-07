
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bit_rate; } ;
struct pi433_instance {TYPE_1__ tx_cfg; struct pi433_device* device; } ;
struct pi433_device {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct pi433_instance* private_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct pi433_device* idr_find (int *,int ) ;
 int iminor (struct inode*) ;
 struct pi433_instance* kzalloc (int,int ) ;
 int minor_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pi433_idr ;
 int pr_debug (char*,int ) ;
 int stream_open (struct inode*,struct file*) ;

__attribute__((used)) static int pi433_open(struct inode *inode, struct file *filp)
{
 struct pi433_device *device;
 struct pi433_instance *instance;

 mutex_lock(&minor_lock);
 device = idr_find(&pi433_idr, iminor(inode));
 mutex_unlock(&minor_lock);
 if (!device) {
  pr_debug("device: minor %d unknown.\n", iminor(inode));
  return -ENODEV;
 }

 instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 if (!instance)
  return -ENOMEM;


 instance->device = device;
 instance->tx_cfg.bit_rate = 4711;



 filp->private_data = instance;
 stream_open(inode, filp);

 return 0;
}
