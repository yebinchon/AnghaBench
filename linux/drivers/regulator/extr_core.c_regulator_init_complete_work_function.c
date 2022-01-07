
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int class_for_each_device (int *,int *,int *,int ) ;
 int regulator_class ;
 int regulator_late_cleanup ;
 int regulator_register_resolve_supply ;

__attribute__((used)) static void regulator_init_complete_work_function(struct work_struct *work)
{







 class_for_each_device(&regulator_class, ((void*)0), ((void*)0),
         regulator_register_resolve_supply);






 class_for_each_device(&regulator_class, ((void*)0), ((void*)0),
         regulator_late_cleanup);
}
