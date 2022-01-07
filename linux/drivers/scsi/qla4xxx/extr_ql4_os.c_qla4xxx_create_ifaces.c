
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipv4_options; int ipv6_options; } ;
struct scsi_qla_host {TYPE_1__ ip_config; } ;


 int IPOPT_IPV4_PROTOCOL_ENABLE ;
 int IPV6_OPT_IPV6_PROTOCOL_ENABLE ;
 int qla4xxx_create_ipv4_iface (struct scsi_qla_host*) ;
 int qla4xxx_create_ipv6_iface (struct scsi_qla_host*) ;

__attribute__((used)) static void qla4xxx_create_ifaces(struct scsi_qla_host *ha)
{
 if (ha->ip_config.ipv4_options & IPOPT_IPV4_PROTOCOL_ENABLE)
  qla4xxx_create_ipv4_iface(ha);

 if (ha->ip_config.ipv6_options & IPV6_OPT_IPV6_PROTOCOL_ENABLE)
  qla4xxx_create_ipv6_iface(ha);
}
