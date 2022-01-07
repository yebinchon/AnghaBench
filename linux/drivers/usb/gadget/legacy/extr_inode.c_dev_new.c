
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_data {int wait; int epfiles; int lock; int count; int state; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int STATE_DEV_DISABLED ;
 int init_waitqueue_head (int *) ;
 struct dev_data* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct dev_data *dev_new (void)
{
 struct dev_data *dev;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);
 dev->state = STATE_DEV_DISABLED;
 refcount_set (&dev->count, 1);
 spin_lock_init (&dev->lock);
 INIT_LIST_HEAD (&dev->epfiles);
 init_waitqueue_head (&dev->wait);
 return dev;
}
