
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zfcp_unit {int dummy; } ;
struct zfcp_port {int unit_list_lock; } ;


 struct zfcp_unit* _zfcp_unit_find (struct zfcp_port*,int ) ;
 int read_lock_irq (int *) ;
 int read_unlock_irq (int *) ;

struct zfcp_unit *zfcp_unit_find(struct zfcp_port *port, u64 fcp_lun)
{
 struct zfcp_unit *unit;

 read_lock_irq(&port->unit_list_lock);
 unit = _zfcp_unit_find(port, fcp_lun);
 read_unlock_irq(&port->unit_list_lock);
 return unit;
}
