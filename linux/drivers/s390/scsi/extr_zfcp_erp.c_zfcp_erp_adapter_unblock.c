
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int status; int erp_action; } ;


 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int atomic_or (int ,int *) ;
 int zfcp_dbf_rec_run (char*,int *) ;
 scalar_t__ zfcp_erp_status_change_set (int ,int *) ;

__attribute__((used)) static void zfcp_erp_adapter_unblock(struct zfcp_adapter *adapter)
{
 if (zfcp_erp_status_change_set(ZFCP_STATUS_COMMON_UNBLOCKED,
           &adapter->status))
  zfcp_dbf_rec_run("eraubl1", &adapter->erp_action);
 atomic_or(ZFCP_STATUS_COMMON_UNBLOCKED, &adapter->status);
}
