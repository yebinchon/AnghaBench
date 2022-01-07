
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;



 int stmp3xxx_wdd ;
 int wdt_stop (int *) ;

__attribute__((used)) static int wdt_notify_sys(struct notifier_block *nb, unsigned long code,
     void *unused)
{
 switch (code) {
 case 130:
  break;
 case 129:
 case 128:
  wdt_stop(&stmp3xxx_wdd);
  break;
 }

 return NOTIFY_DONE;
}
