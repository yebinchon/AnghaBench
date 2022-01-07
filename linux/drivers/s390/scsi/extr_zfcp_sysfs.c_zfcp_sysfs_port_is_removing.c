
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int units; } ;


 int atomic_read (int *) ;
 int lockdep_assert_held (int *) ;
 int zfcp_sysfs_port_units_mutex ;

bool zfcp_sysfs_port_is_removing(const struct zfcp_port *const port)
{
 lockdep_assert_held(&zfcp_sysfs_port_units_mutex);
 return atomic_read(&port->units) == -1;
}
