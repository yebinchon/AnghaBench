
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int sched_set_itmt_support () ;

__attribute__((used)) static void itmt_legacy_work_fn(struct work_struct *work)
{
 sched_set_itmt_support();
}
