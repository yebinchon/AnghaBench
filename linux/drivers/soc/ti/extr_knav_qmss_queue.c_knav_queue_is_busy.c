
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knav_queue_inst {int handles; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline bool knav_queue_is_busy(struct knav_queue_inst *inst)
{
 return !list_empty(&inst->handles);
}
