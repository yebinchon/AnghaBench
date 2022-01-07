
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
 int ZFCP_STATUS_COMMON_ERP_INUSE ;
 int ZFCP_STATUS_COMMON_NOESC ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int atomic_read (int *) ;
 struct zfcp_scsi_dev* sdev_to_zfcp (struct scsi_device*) ;

__attribute__((used)) static enum zfcp_erp_act_type zfcp_erp_required_act(enum zfcp_erp_act_type want,
     struct zfcp_adapter *adapter,
     struct zfcp_port *port,
     struct scsi_device *sdev)
{
 enum zfcp_erp_act_type need = want;
 int l_status, p_status, a_status;
 struct zfcp_scsi_dev *zfcp_sdev;

 switch (want) {
 case 130:
  zfcp_sdev = sdev_to_zfcp(sdev);
  l_status = atomic_read(&zfcp_sdev->status);
  if (l_status & ZFCP_STATUS_COMMON_ERP_INUSE)
   return 0;
  p_status = atomic_read(&port->status);
  if (!(p_status & ZFCP_STATUS_COMMON_RUNNING) ||
        p_status & ZFCP_STATUS_COMMON_ERP_FAILED)
   return 0;
  if (!(p_status & ZFCP_STATUS_COMMON_UNBLOCKED))
   need = 129;

 case 128:
  p_status = atomic_read(&port->status);
  if (!(p_status & ZFCP_STATUS_COMMON_OPEN))
   need = 129;

 case 129:
  p_status = atomic_read(&port->status);
  if (p_status & ZFCP_STATUS_COMMON_ERP_INUSE)
   return 0;
  a_status = atomic_read(&adapter->status);
  if (!(a_status & ZFCP_STATUS_COMMON_RUNNING) ||
        a_status & ZFCP_STATUS_COMMON_ERP_FAILED)
   return 0;
  if (p_status & ZFCP_STATUS_COMMON_NOESC)
   return need;
  if (!(a_status & ZFCP_STATUS_COMMON_UNBLOCKED))
   need = 131;

 case 131:
  a_status = atomic_read(&adapter->status);
  if (a_status & ZFCP_STATUS_COMMON_ERP_INUSE)
   return 0;
  if (!(a_status & ZFCP_STATUS_COMMON_RUNNING) &&
      !(a_status & ZFCP_STATUS_COMMON_OPEN))
   return 0;
 }

 return need;
}
