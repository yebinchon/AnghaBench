
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct con_driver {int flag; } ;


 int CON_DRIVER_FLAG_ATTR ;

__attribute__((used)) static int vtconsole_init_device(struct con_driver *con)
{
 con->flag |= CON_DRIVER_FLAG_ATTR;
 return 0;
}
