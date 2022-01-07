
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* VCHIQ_INSTANCE_T ;
struct TYPE_3__ {int trace; } ;



int
vchiq_instance_get_trace(VCHIQ_INSTANCE_T instance)
{
 return instance->trace;
}
