
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int psy_changed () ;
 int update_status () ;

__attribute__((used)) static void charger_work_func(struct work_struct *work)
{
 update_status();
 psy_changed();
}
