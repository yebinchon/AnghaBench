
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int * iface_ipv4; } ;


 int iscsi_destroy_iface (int *) ;

__attribute__((used)) static void qla4xxx_destroy_ipv4_iface(struct scsi_qla_host *ha)
{
 if (ha->iface_ipv4) {
  iscsi_destroy_iface(ha->iface_ipv4);
  ha->iface_ipv4 = ((void*)0);
 }
}
