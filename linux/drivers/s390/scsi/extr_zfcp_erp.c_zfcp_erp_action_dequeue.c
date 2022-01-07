
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_scsi_dev {int status; } ;
struct zfcp_erp_action {int status; int type; struct zfcp_adapter* adapter; TYPE_1__* port; int sdev; int list; } ;
struct zfcp_adapter {int status; int erp_low_mem_count; int erp_total_count; } ;
struct TYPE_2__ {int status; } ;






 int ZFCP_STATUS_COMMON_ERP_INUSE ;
 int ZFCP_STATUS_ERP_LOWMEM ;
 int atomic_andnot (int ,int *) ;
 int list_del (int *) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (int ) ;
 int zfcp_dbf_rec_run (char*,struct zfcp_erp_action*) ;

__attribute__((used)) static void zfcp_erp_action_dequeue(struct zfcp_erp_action *erp_action)
{
 struct zfcp_adapter *adapter = erp_action->adapter;
 struct zfcp_scsi_dev *zfcp_sdev;

 adapter->erp_total_count--;
 if (erp_action->status & ZFCP_STATUS_ERP_LOWMEM) {
  adapter->erp_low_mem_count--;
  erp_action->status &= ~ZFCP_STATUS_ERP_LOWMEM;
 }

 list_del(&erp_action->list);
 zfcp_dbf_rec_run("eractd1", erp_action);

 switch (erp_action->type) {
 case 130:
  zfcp_sdev = sdev_to_zfcp(erp_action->sdev);
  atomic_andnot(ZFCP_STATUS_COMMON_ERP_INUSE,
      &zfcp_sdev->status);
  break;

 case 128:
 case 129:
  atomic_andnot(ZFCP_STATUS_COMMON_ERP_INUSE,
      &erp_action->port->status);
  break;

 case 131:
  atomic_andnot(ZFCP_STATUS_COMMON_ERP_INUSE,
      &erp_action->adapter->status);
  break;
 }
}
