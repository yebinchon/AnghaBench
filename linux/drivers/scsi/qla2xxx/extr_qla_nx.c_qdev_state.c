
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 char** q_dev_state ;

char *qdev_state(uint32_t dev_state)
{
 return q_dev_state[dev_state];
}
