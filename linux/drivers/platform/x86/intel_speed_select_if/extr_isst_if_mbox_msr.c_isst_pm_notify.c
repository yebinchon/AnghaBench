
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;





 int isst_resume_common () ;

__attribute__((used)) static int isst_pm_notify(struct notifier_block *nb,
          unsigned long mode, void *_unused)
{
 switch (mode) {
 case 130:
 case 129:
 case 128:
  isst_resume_common();
  break;
 default:
  break;
 }
 return 0;
}
