
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int recovery_work ;
 int schedule_work (int *) ;

__attribute__((used)) static void recovery_func(struct timer_list *unused)
{




 schedule_work(&recovery_work);
}
