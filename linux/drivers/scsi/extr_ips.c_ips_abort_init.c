
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ active; } ;
typedef TYPE_1__ ips_ha_t ;


 int ips_free (TYPE_1__*) ;
 int ** ips_ha ;
 int ** ips_sh ;

__attribute__((used)) static int
ips_abort_init(ips_ha_t * ha, int index)
{
 ha->active = 0;
 ips_free(ha);
 ips_ha[index] = ((void*)0);
 ips_sh[index] = ((void*)0);
 return -1;
}
