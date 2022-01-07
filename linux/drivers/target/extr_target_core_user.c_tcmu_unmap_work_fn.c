
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int check_timedout_devices () ;
 int find_free_blocks () ;

__attribute__((used)) static void tcmu_unmap_work_fn(struct work_struct *work)
{
 check_timedout_devices();
 find_free_blocks();
}
