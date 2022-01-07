
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __qman_requires_cleanup ;
 int qman_enable_irqs () ;

void qman_done_cleanup(void)
{
 qman_enable_irqs();
 __qman_requires_cleanup = 0;
}
