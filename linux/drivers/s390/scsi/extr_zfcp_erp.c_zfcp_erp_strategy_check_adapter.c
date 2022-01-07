
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_adapter {int status; TYPE_1__* ccw_device; int erp_counter; } ;
typedef enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;
struct TYPE_2__ {int dev; } ;
 int ZFCP_MAX_ERPS ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*) ;
 int zfcp_erp_adapter_block (struct zfcp_adapter*,int ) ;
 int zfcp_erp_adapter_unblock (struct zfcp_adapter*) ;
 int zfcp_erp_set_adapter_status (struct zfcp_adapter*,int) ;

__attribute__((used)) static enum zfcp_erp_act_result zfcp_erp_strategy_check_adapter(
 struct zfcp_adapter *adapter, enum zfcp_erp_act_result result)
{
 switch (result) {
 case 128 :
  atomic_set(&adapter->erp_counter, 0);
  zfcp_erp_adapter_unblock(adapter);
  break;

 case 130 :
  atomic_inc(&adapter->erp_counter);
  if (atomic_read(&adapter->erp_counter) > ZFCP_MAX_ERPS) {
   dev_err(&adapter->ccw_device->dev,
    "ERP cannot recover an error "
    "on the FCP device\n");
   zfcp_erp_set_adapter_status(adapter,
         ZFCP_STATUS_COMMON_ERP_FAILED);
  }
  break;
 case 133:
 case 131:
 case 132:
 case 129:

  break;
 }

 if (atomic_read(&adapter->status) & ZFCP_STATUS_COMMON_ERP_FAILED) {
  zfcp_erp_adapter_block(adapter, 0);
  result = 131;
 }
 return result;
}
