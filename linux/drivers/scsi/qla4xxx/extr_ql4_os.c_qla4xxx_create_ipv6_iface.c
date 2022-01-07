
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {void* iface_ipv6_1; int host; void* iface_ipv6_0; } ;


 int ISCSI_IFACE_TYPE_IPV6 ;
 int KERN_ERR ;
 void* iscsi_create_iface (int ,int *,int ,int,int ) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int qla4xxx_iscsi_transport ;

__attribute__((used)) static void qla4xxx_create_ipv6_iface(struct scsi_qla_host *ha)
{
 if (!ha->iface_ipv6_0)

  ha->iface_ipv6_0 = iscsi_create_iface(ha->host,
            &qla4xxx_iscsi_transport,
            ISCSI_IFACE_TYPE_IPV6, 0,
            0);
 if (!ha->iface_ipv6_0)
  ql4_printk(KERN_ERR, ha, "Could not create IPv6 iSCSI "
      "iface0.\n");

 if (!ha->iface_ipv6_1)

  ha->iface_ipv6_1 = iscsi_create_iface(ha->host,
            &qla4xxx_iscsi_transport,
            ISCSI_IFACE_TYPE_IPV6, 1,
            0);
 if (!ha->iface_ipv6_1)
  ql4_printk(KERN_ERR, ha, "Could not create IPv6 iSCSI "
      "iface1.\n");
}
