
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int dev; } ;
struct zfcp_erp_action {int type; int status; int step; struct scsi_device* sdev; struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int ref; int service_level; int ns_up_work; int work_queue; } ;
struct scsi_device {int dummy; } ;
typedef enum zfcp_erp_act_result { ____Placeholder_zfcp_erp_act_result } zfcp_erp_act_result ;






 int ZFCP_ERP_STEP_UNINITIALIZED ;
 int ZFCP_ERP_SUCCEEDED ;
 int ZFCP_STATUS_ERP_NO_REF ;
 int kref_put (int *,int ) ;
 int put_device (int *) ;
 int queue_work (int ,int *) ;
 int register_service_level (int *) ;
 int scsi_device_put (struct scsi_device*) ;
 int unregister_service_level (int *) ;
 int zfcp_adapter_release ;
 int zfcp_erp_try_rport_unblock (struct zfcp_port*) ;
 int zfcp_fc_conditional_port_scan (struct zfcp_adapter*) ;

__attribute__((used)) static void zfcp_erp_action_cleanup(struct zfcp_erp_action *act,
        enum zfcp_erp_act_result result)
{
 struct zfcp_adapter *adapter = act->adapter;
 struct zfcp_port *port = act->port;
 struct scsi_device *sdev = act->sdev;

 switch (act->type) {
 case 130:
  if (!(act->status & ZFCP_STATUS_ERP_NO_REF))
   scsi_device_put(sdev);
  zfcp_erp_try_rport_unblock(port);
  break;

 case 129:





  if (act->step != ZFCP_ERP_STEP_UNINITIALIZED)
   if (result == ZFCP_ERP_SUCCEEDED)
    zfcp_erp_try_rport_unblock(port);

 case 128:
  put_device(&port->dev);
  break;

 case 131:
  if (result == ZFCP_ERP_SUCCEEDED) {
   register_service_level(&adapter->service_level);
   zfcp_fc_conditional_port_scan(adapter);
   queue_work(adapter->work_queue, &adapter->ns_up_work);
  } else
   unregister_service_level(&adapter->service_level);

  kref_put(&adapter->ref, zfcp_adapter_release);
  break;
 }
}
