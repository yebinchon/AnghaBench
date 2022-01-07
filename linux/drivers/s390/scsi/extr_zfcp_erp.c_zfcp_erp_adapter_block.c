
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int dummy; } ;


 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int zfcp_erp_clear_adapter_status (struct zfcp_adapter*,int) ;

__attribute__((used)) static void zfcp_erp_adapter_block(struct zfcp_adapter *adapter, int mask)
{
 zfcp_erp_clear_adapter_status(adapter,
           ZFCP_STATUS_COMMON_UNBLOCKED | mask);
}
