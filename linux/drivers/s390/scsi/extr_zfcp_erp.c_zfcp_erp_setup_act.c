
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zfcp_erp_action {int type; int status; scalar_t__ fsf_req_id; int step; int timer; int list; struct zfcp_adapter* adapter; struct scsi_device* sdev; struct zfcp_port* port; } ;
struct zfcp_scsi_dev {int status; struct zfcp_erp_action erp_action; } ;
struct zfcp_port {int status; struct zfcp_erp_action erp_action; int dev; } ;
struct zfcp_adapter {int status; struct zfcp_erp_action erp_action; int ref; } ;
struct scsi_device {int dummy; } ;
typedef enum zfcp_erp_act_type { ____Placeholder_zfcp_erp_act_type } zfcp_erp_act_type ;


 int WARN_ON_ONCE (int) ;




 int ZFCP_ERP_STEP_UNINITIALIZED ;
 int ZFCP_STATUS_COMMON_ERP_INUSE ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int ZFCP_STATUS_ERP_CLOSE_ONLY ;
 int ZFCP_STATUS_ERP_NO_REF ;
 int atomic_or (int ,int *) ;
 int atomic_read (int *) ;
 int get_device (int *) ;
 int kref_get (int *) ;
 int memset (int *,int ,int) ;
 int scsi_device_get (struct scsi_device*) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int zfcp_erp_action_dismiss_adapter (struct zfcp_adapter*) ;
 int zfcp_erp_action_dismiss_port (struct zfcp_port*) ;

__attribute__((used)) static struct zfcp_erp_action *zfcp_erp_setup_act(enum zfcp_erp_act_type need,
        u32 act_status,
        struct zfcp_adapter *adapter,
        struct zfcp_port *port,
        struct scsi_device *sdev)
{
 struct zfcp_erp_action *erp_action;
 struct zfcp_scsi_dev *zfcp_sdev;

 if (WARN_ON_ONCE(need != 130 &&
    need != 129 &&
    need != 128 &&
    need != 131))
  return ((void*)0);

 switch (need) {
 case 130:
  zfcp_sdev = sdev_to_zfcp(sdev);
  if (!(act_status & ZFCP_STATUS_ERP_NO_REF))
   if (scsi_device_get(sdev))
    return ((void*)0);
  atomic_or(ZFCP_STATUS_COMMON_ERP_INUSE,
    &zfcp_sdev->status);
  erp_action = &zfcp_sdev->erp_action;
  WARN_ON_ONCE(erp_action->port != port);
  WARN_ON_ONCE(erp_action->sdev != sdev);
  if (!(atomic_read(&zfcp_sdev->status) &
        ZFCP_STATUS_COMMON_RUNNING))
   act_status |= ZFCP_STATUS_ERP_CLOSE_ONLY;
  break;

 case 129:
 case 128:
  if (!get_device(&port->dev))
   return ((void*)0);
  zfcp_erp_action_dismiss_port(port);
  atomic_or(ZFCP_STATUS_COMMON_ERP_INUSE, &port->status);
  erp_action = &port->erp_action;
  WARN_ON_ONCE(erp_action->port != port);
  WARN_ON_ONCE(erp_action->sdev != ((void*)0));
  if (!(atomic_read(&port->status) & ZFCP_STATUS_COMMON_RUNNING))
   act_status |= ZFCP_STATUS_ERP_CLOSE_ONLY;
  break;

 case 131:
  kref_get(&adapter->ref);
  zfcp_erp_action_dismiss_adapter(adapter);
  atomic_or(ZFCP_STATUS_COMMON_ERP_INUSE, &adapter->status);
  erp_action = &adapter->erp_action;
  WARN_ON_ONCE(erp_action->port != ((void*)0));
  WARN_ON_ONCE(erp_action->sdev != ((void*)0));
  if (!(atomic_read(&adapter->status) &
        ZFCP_STATUS_COMMON_RUNNING))
   act_status |= ZFCP_STATUS_ERP_CLOSE_ONLY;
  break;
 }

 WARN_ON_ONCE(erp_action->adapter != adapter);
 memset(&erp_action->list, 0, sizeof(erp_action->list));
 memset(&erp_action->timer, 0, sizeof(erp_action->timer));
 erp_action->step = ZFCP_ERP_STEP_UNINITIALIZED;
 erp_action->fsf_req_id = 0;
 erp_action->type = need;
 erp_action->status = act_status;

 return erp_action;
}
