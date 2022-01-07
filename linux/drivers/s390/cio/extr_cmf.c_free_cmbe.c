
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmb_data {int hw_block; struct cmb_data* last_block; } ;
struct ccw_device {int ccwlock; TYPE_1__* private; } ;
struct TYPE_4__ {int lock; int list; } ;
struct TYPE_3__ {int cmb_list; struct cmb_data* cmb; } ;


 int CMF_OFF ;
 TYPE_2__ cmb_area ;
 int cmbe_cache ;
 int cmf_activate (int *,int ) ;
 int kfree (struct cmb_data*) ;
 int kmem_cache_free (int ,int ) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void free_cmbe(struct ccw_device *cdev)
{
 struct cmb_data *cmb_data;

 spin_lock(&cmb_area.lock);
 spin_lock_irq(cdev->ccwlock);
 cmb_data = cdev->private->cmb;
 cdev->private->cmb = ((void*)0);
 if (cmb_data) {
  kfree(cmb_data->last_block);
  kmem_cache_free(cmbe_cache, cmb_data->hw_block);
 }
 kfree(cmb_data);


 list_del_init(&cdev->private->cmb_list);
 if (list_empty(&cmb_area.list))
  cmf_activate(((void*)0), CMF_OFF);
 spin_unlock_irq(cdev->ccwlock);
 spin_unlock(&cmb_area.lock);
}
