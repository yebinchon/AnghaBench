
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;


 int qla4xxx_destroy_ipv4_iface (struct scsi_qla_host*) ;
 int qla4xxx_destroy_ipv6_iface (struct scsi_qla_host*) ;

__attribute__((used)) static void qla4xxx_destroy_ifaces(struct scsi_qla_host *ha)
{
 qla4xxx_destroy_ipv4_iface(ha);
 qla4xxx_destroy_ipv6_iface(ha);
}
