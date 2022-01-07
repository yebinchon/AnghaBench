
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int erp_lock; } ;


 int ZFCP_ERP_ACTION_REOPEN_ADAPTER ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;
 int zfcp_erp_action_enqueue (int ,struct zfcp_adapter*,int *,int *,char*,int ) ;
 int zfcp_erp_adapter_block (struct zfcp_adapter*,int) ;
 int zfcp_scsi_schedule_rports_block (struct zfcp_adapter*) ;

void zfcp_erp_adapter_reopen(struct zfcp_adapter *adapter, int clear,
        char *dbftag)
{
 unsigned long flags;

 zfcp_erp_adapter_block(adapter, clear);
 zfcp_scsi_schedule_rports_block(adapter);

 write_lock_irqsave(&adapter->erp_lock, flags);
 zfcp_erp_action_enqueue(ZFCP_ERP_ACTION_REOPEN_ADAPTER, adapter,
    ((void*)0), ((void*)0), dbftag, 0);
 write_unlock_irqrestore(&adapter->erp_lock, flags);
}
