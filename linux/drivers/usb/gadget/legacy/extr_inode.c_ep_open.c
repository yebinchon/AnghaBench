
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {struct ep_data* i_private; } ;
struct file {struct ep_data* private_data; } ;
struct ep_data {scalar_t__ state; int lock; TYPE_1__* dev; int name; } ;
struct TYPE_3__ {scalar_t__ state; int lock; } ;


 int DBG (TYPE_1__*,char*,int ,scalar_t__) ;
 int EBUSY ;
 int EINTR ;
 int ENOENT ;
 scalar_t__ STATE_DEV_UNBOUND ;
 scalar_t__ STATE_EP_DISABLED ;
 scalar_t__ STATE_EP_READY ;
 int VDEBUG (TYPE_1__*,char*,int ) ;
 int get_ep (struct ep_data*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
ep_open (struct inode *inode, struct file *fd)
{
 struct ep_data *data = inode->i_private;
 int value = -EBUSY;

 if (mutex_lock_interruptible(&data->lock) != 0)
  return -EINTR;
 spin_lock_irq (&data->dev->lock);
 if (data->dev->state == STATE_DEV_UNBOUND)
  value = -ENOENT;
 else if (data->state == STATE_EP_DISABLED) {
  value = 0;
  data->state = STATE_EP_READY;
  get_ep (data);
  fd->private_data = data;
  VDEBUG (data->dev, "%s ready\n", data->name);
 } else
  DBG (data->dev, "%s state %d\n",
   data->name, data->state);
 spin_unlock_irq (&data->dev->lock);
 mutex_unlock(&data->lock);
 return value;
}
