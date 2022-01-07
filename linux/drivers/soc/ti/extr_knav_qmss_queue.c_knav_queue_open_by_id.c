
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knav_queue_inst {int dummy; } ;
struct knav_queue {int dummy; } ;


 int EBUSY ;
 int EEXIST ;
 int ENODEV ;
 struct knav_queue* ERR_PTR (int ) ;
 unsigned int KNAV_QUEUE_SHARED ;
 struct knav_queue* __knav_queue_open (struct knav_queue_inst*,char const*,unsigned int) ;
 int knav_dev_lock ;
 struct knav_queue_inst* knav_queue_find_by_id (unsigned int) ;
 scalar_t__ knav_queue_is_busy (struct knav_queue_inst*) ;
 int knav_queue_is_shared (struct knav_queue_inst*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct knav_queue *
knav_queue_open_by_id(const char *name, unsigned id, unsigned flags)
{
 struct knav_queue_inst *inst;
 struct knav_queue *qh;

 mutex_lock(&knav_dev_lock);

 qh = ERR_PTR(-ENODEV);
 inst = knav_queue_find_by_id(id);
 if (!inst)
  goto unlock_ret;

 qh = ERR_PTR(-EEXIST);
 if (!(flags & KNAV_QUEUE_SHARED) && knav_queue_is_busy(inst))
  goto unlock_ret;

 qh = ERR_PTR(-EBUSY);
 if ((flags & KNAV_QUEUE_SHARED) &&
     (knav_queue_is_busy(inst) && !knav_queue_is_shared(inst)))
  goto unlock_ret;

 qh = __knav_queue_open(inst, name, flags);

unlock_ret:
 mutex_unlock(&knav_dev_lock);

 return qh;
}
