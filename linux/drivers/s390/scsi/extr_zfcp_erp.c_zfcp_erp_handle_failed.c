
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_scsi_dev {int status; } ;
struct zfcp_port {int status; } ;
struct zfcp_adapter {int status; } ;
struct scsi_device {int dummy; } ;
typedef enum zfcp_erp_act_type { ____Placeholder_zfcp_erp_act_type } zfcp_erp_act_type ;






 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int atomic_read (int *) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;
 int zfcp_erp_set_adapter_status (struct zfcp_adapter*,int) ;
 int zfcp_erp_set_port_status (struct zfcp_port*,int) ;

__attribute__((used)) static enum zfcp_erp_act_type zfcp_erp_handle_failed(
 enum zfcp_erp_act_type want, struct zfcp_adapter *adapter,
 struct zfcp_port *port, struct scsi_device *sdev)
{
 enum zfcp_erp_act_type need = want;
 struct zfcp_scsi_dev *zsdev;

 switch (want) {
 case 130:
  zsdev = sdev_to_zfcp(sdev);
  if (atomic_read(&zsdev->status) & ZFCP_STATUS_COMMON_ERP_FAILED)
   need = 0;
  break;
 case 128:
  if (atomic_read(&port->status) & ZFCP_STATUS_COMMON_ERP_FAILED)
   need = 0;
  break;
 case 129:
  if (atomic_read(&port->status) &
      ZFCP_STATUS_COMMON_ERP_FAILED) {
   need = 0;

   zfcp_erp_set_port_status(
    port, ZFCP_STATUS_COMMON_ERP_FAILED);
  }
  break;
 case 131:
  if (atomic_read(&adapter->status) &
      ZFCP_STATUS_COMMON_ERP_FAILED) {
   need = 0;

   zfcp_erp_set_adapter_status(
    adapter, ZFCP_STATUS_COMMON_ERP_FAILED);
  }
  break;
 }

 return need;
}
