
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct zfcp_port {int d_id; int wwpn; int status; } ;
struct zfcp_adapter {int erp_lock; } ;


 int ZFCP_ERP_ACTION_NONE ;
 int ZFCP_ERP_ACTION_REOPEN_PORT_FORCED ;
 int atomic_set (int *,int) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;
 int zfcp_dbf_rec_trig (char*,struct zfcp_adapter*,struct zfcp_port*,int *,int ,int ) ;

void zfcp_erp_port_forced_no_port_dbf(char *dbftag,
          struct zfcp_adapter *adapter,
          u64 port_name, u32 port_id)
{
 unsigned long flags;
 static struct zfcp_port tmpport;

 write_lock_irqsave(&adapter->erp_lock, flags);




 atomic_set(&tmpport.status, -1);
 tmpport.wwpn = port_name;
 tmpport.d_id = port_id;
 zfcp_dbf_rec_trig(dbftag, adapter, &tmpport, ((void*)0),
     ZFCP_ERP_ACTION_REOPEN_PORT_FORCED,
     ZFCP_ERP_ACTION_NONE);
 write_unlock_irqrestore(&adapter->erp_lock, flags);
}
