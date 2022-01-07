
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int dummy; } ;


 int ZFCP_ERP_ACTION_REOPEN_ADAPTER ;
 int zfcp_erp_action_enqueue (int ,struct zfcp_adapter*,int *,int *,char*,int ) ;
 int zfcp_erp_adapter_block (struct zfcp_adapter*,int) ;
 int zfcp_scsi_schedule_rports_block (struct zfcp_adapter*) ;

__attribute__((used)) static void _zfcp_erp_adapter_reopen(struct zfcp_adapter *adapter,
        int clear_mask, char *dbftag)
{
 zfcp_erp_adapter_block(adapter, clear_mask);
 zfcp_scsi_schedule_rports_block(adapter);

 zfcp_erp_action_enqueue(ZFCP_ERP_ACTION_REOPEN_ADAPTER,
    adapter, ((void*)0), ((void*)0), dbftag, 0);
}
