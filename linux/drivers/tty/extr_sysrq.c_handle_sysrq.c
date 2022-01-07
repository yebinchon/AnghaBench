
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __handle_sysrq (int,int) ;
 scalar_t__ sysrq_on () ;

void handle_sysrq(int key)
{
 if (sysrq_on())
  __handle_sysrq(key, 1);
}
