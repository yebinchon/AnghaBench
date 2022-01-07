
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int erp_lock; } ;


 int _zfcp_erp_port_forced_reopen (struct zfcp_port*,int,char*) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void zfcp_erp_port_forced_reopen(struct zfcp_port *port, int clear,
     char *dbftag)
{
 unsigned long flags;
 struct zfcp_adapter *adapter = port->adapter;

 write_lock_irqsave(&adapter->erp_lock, flags);
 _zfcp_erp_port_forced_reopen(port, clear, dbftag);
 write_unlock_irqrestore(&adapter->erp_lock, flags);
}
