
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zfcp_port {int dummy; } ;
struct zfcp_erp_action {int list; } ;
struct zfcp_adapter {int erp_ready_wq; int erp_ready_head; int erp_total_count; int status; int erp_thread; } ;
struct scsi_device {int dummy; } ;
typedef enum zfcp_erp_act_type { ____Placeholder_zfcp_erp_act_type } zfcp_erp_act_type ;


 int ZFCP_ERP_ACTION_FAILED ;
 int ZFCP_ERP_ACTION_NONE ;
 int ZFCP_STATUS_ADAPTER_ERP_PENDING ;
 int atomic_or (int ,int *) ;
 int list_add_tail (int *,int *) ;
 int wake_up (int *) ;
 int zfcp_dbf_rec_trig (char*,struct zfcp_adapter*,struct zfcp_port*,struct scsi_device*,int,int) ;
 int zfcp_erp_handle_failed (int,struct zfcp_adapter*,struct zfcp_port*,struct scsi_device*) ;
 int zfcp_erp_required_act (int,struct zfcp_adapter*,struct zfcp_port*,struct scsi_device*) ;
 struct zfcp_erp_action* zfcp_erp_setup_act (int,int ,struct zfcp_adapter*,struct zfcp_port*,struct scsi_device*) ;

__attribute__((used)) static void zfcp_erp_action_enqueue(enum zfcp_erp_act_type want,
        struct zfcp_adapter *adapter,
        struct zfcp_port *port,
        struct scsi_device *sdev,
        char *dbftag, u32 act_status)
{
 enum zfcp_erp_act_type need;
 struct zfcp_erp_action *act;

 need = zfcp_erp_handle_failed(want, adapter, port, sdev);
 if (!need) {
  need = ZFCP_ERP_ACTION_FAILED;
  goto out;
 }

 if (!adapter->erp_thread) {
  need = ZFCP_ERP_ACTION_NONE;
  goto out;
 }

 need = zfcp_erp_required_act(want, adapter, port, sdev);
 if (!need)
  goto out;

 act = zfcp_erp_setup_act(need, act_status, adapter, port, sdev);
 if (!act) {
  need |= ZFCP_ERP_ACTION_NONE;
  goto out;
 }
 atomic_or(ZFCP_STATUS_ADAPTER_ERP_PENDING, &adapter->status);
 ++adapter->erp_total_count;
 list_add_tail(&act->list, &adapter->erp_ready_head);
 wake_up(&adapter->erp_ready_wq);
 out:
 zfcp_dbf_rec_trig(dbftag, adapter, port, sdev, want, need);
}
