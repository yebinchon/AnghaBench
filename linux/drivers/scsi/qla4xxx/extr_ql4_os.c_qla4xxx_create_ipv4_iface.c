
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {scalar_t__ iface_ipv4; int host; } ;


 int ISCSI_IFACE_TYPE_IPV4 ;
 int KERN_ERR ;
 scalar_t__ iscsi_create_iface (int ,int *,int ,int ,int ) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int qla4xxx_iscsi_transport ;

__attribute__((used)) static void qla4xxx_create_ipv4_iface(struct scsi_qla_host *ha)
{
 if (ha->iface_ipv4)
  return;


 ha->iface_ipv4 = iscsi_create_iface(ha->host,
         &qla4xxx_iscsi_transport,
         ISCSI_IFACE_TYPE_IPV4, 0, 0);
 if (!ha->iface_ipv4)
  ql4_printk(KERN_ERR, ha, "Could not create IPv4 iSCSI "
      "iface0.\n");
}
