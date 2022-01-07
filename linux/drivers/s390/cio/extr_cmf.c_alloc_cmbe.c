
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmbe {int dummy; } ;
struct cmb_data {int size; struct cmb_data* last_block; struct cmbe* hw_block; } ;
struct ccw_device {int ccwlock; TYPE_1__* private; } ;
struct TYPE_4__ {int lock; int list; } ;
struct TYPE_3__ {int cmb_list; struct cmb_data* cmb; } ;


 int CMF_ON ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__ cmb_area ;
 int cmbe_cache ;
 int cmf_activate (int *,int ) ;
 int kfree (struct cmb_data*) ;
 int kmem_cache_free (int ,struct cmbe*) ;
 struct cmbe* kmem_cache_zalloc (int ,int ) ;
 void* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int alloc_cmbe(struct ccw_device *cdev)
{
 struct cmb_data *cmb_data;
 struct cmbe *cmbe;
 int ret = -ENOMEM;

 cmbe = kmem_cache_zalloc(cmbe_cache, GFP_KERNEL);
 if (!cmbe)
  return ret;

 cmb_data = kzalloc(sizeof(*cmb_data), GFP_KERNEL);
 if (!cmb_data)
  goto out_free;

 cmb_data->last_block = kzalloc(sizeof(struct cmbe), GFP_KERNEL);
 if (!cmb_data->last_block)
  goto out_free;

 cmb_data->size = sizeof(*cmbe);
 cmb_data->hw_block = cmbe;

 spin_lock(&cmb_area.lock);
 spin_lock_irq(cdev->ccwlock);
 if (cdev->private->cmb)
  goto out_unlock;

 cdev->private->cmb = cmb_data;


 if (list_empty(&cmb_area.list))
  cmf_activate(((void*)0), CMF_ON);
 list_add_tail(&cdev->private->cmb_list, &cmb_area.list);

 spin_unlock_irq(cdev->ccwlock);
 spin_unlock(&cmb_area.lock);
 return 0;

out_unlock:
 spin_unlock_irq(cdev->ccwlock);
 spin_unlock(&cmb_area.lock);
 ret = -EBUSY;
out_free:
 if (cmb_data)
  kfree(cmb_data->last_block);
 kfree(cmb_data);
 kmem_cache_free(cmbe_cache, cmbe);

 return ret;
}
