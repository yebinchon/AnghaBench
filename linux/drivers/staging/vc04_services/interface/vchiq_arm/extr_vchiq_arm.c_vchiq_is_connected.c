
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* VCHIQ_INSTANCE_T ;
struct TYPE_3__ {int connected; } ;



__attribute__((used)) static int vchiq_is_connected(VCHIQ_INSTANCE_T instance)
{
 return instance->connected;
}
