
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charger_manager {scalar_t__ emergency_stop; } ;


 int EAGAIN ;
 int try_charger_enable (struct charger_manager*,int) ;

__attribute__((used)) static int try_charger_restart(struct charger_manager *cm)
{
 int err;

 if (cm->emergency_stop)
  return -EAGAIN;

 err = try_charger_enable(cm, 0);
 if (err)
  return err;

 return try_charger_enable(cm, 1);
}
