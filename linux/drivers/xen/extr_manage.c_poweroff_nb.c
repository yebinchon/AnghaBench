
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int SHUTDOWN_POWEROFF ;



 int shutting_down ;

__attribute__((used)) static int poweroff_nb(struct notifier_block *cb, unsigned long code, void *unused)
{
 switch (code) {
 case 130:
 case 129:
 case 128:
  shutting_down = SHUTDOWN_POWEROFF;
 default:
  break;
 }
 return NOTIFY_DONE;
}
