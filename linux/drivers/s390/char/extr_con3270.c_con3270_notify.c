
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 int con3270_flush () ;

__attribute__((used)) static int con3270_notify(struct notifier_block *self,
     unsigned long event, void *data)
{
 con3270_flush();
 return NOTIFY_OK;
}
