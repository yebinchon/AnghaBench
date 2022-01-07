
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int dummy; } ;


 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*) ;
 int zfcp_erp_set_adapter_status (struct zfcp_adapter*,int ) ;
 int zfcp_erp_wait (struct zfcp_adapter*) ;

void zfcp_erp_adapter_reset_sync(struct zfcp_adapter *adapter, char *dbftag)
{
 zfcp_erp_set_adapter_status(adapter, ZFCP_STATUS_COMMON_RUNNING);
 zfcp_erp_adapter_reopen(adapter, ZFCP_STATUS_COMMON_ERP_FAILED, dbftag);
 zfcp_erp_wait(adapter);
}
