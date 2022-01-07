
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_adapter {int tasklet; int flags; } ;


 int AF_TASKLET_SCHEDULED ;
 int tasklet_hi_schedule (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static inline void esas2r_schedule_tasklet(struct esas2r_adapter *a)
{

 if (!test_and_set_bit(AF_TASKLET_SCHEDULED, &a->flags))
  tasklet_hi_schedule(&a->tasklet);
}
