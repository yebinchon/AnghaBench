
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 int S6flag ;

__attribute__((used)) static int stex_halt(struct notifier_block *nb, unsigned long event, void *buf)
{
 S6flag = 1;
 return NOTIFY_OK;
}
