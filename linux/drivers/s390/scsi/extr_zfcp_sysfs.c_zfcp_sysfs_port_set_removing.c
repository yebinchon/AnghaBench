
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int units; } ;


 int atomic_set (int *,int) ;
 int lockdep_assert_held (int *) ;
 int zfcp_sysfs_port_units_mutex ;

__attribute__((used)) static void zfcp_sysfs_port_set_removing(struct zfcp_port *const port)
{
 lockdep_assert_held(&zfcp_sysfs_port_units_mutex);
 atomic_set(&port->units, -1);
}
