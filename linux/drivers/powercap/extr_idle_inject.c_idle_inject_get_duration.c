
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idle_inject_device {int idle_duration_us; int run_duration_us; } ;


 unsigned int READ_ONCE (int ) ;

void idle_inject_get_duration(struct idle_inject_device *ii_dev,
         unsigned int *run_duration_us,
         unsigned int *idle_duration_us)
{
 *run_duration_us = READ_ONCE(ii_dev->run_duration_us);
 *idle_duration_us = READ_ONCE(ii_dev->idle_duration_us);
}
