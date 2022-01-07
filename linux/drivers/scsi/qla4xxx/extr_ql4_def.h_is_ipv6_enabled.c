
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipv6_options; } ;
struct scsi_qla_host {TYPE_1__ ip_config; } ;


 int IPV6_OPT_IPV6_PROTOCOL_ENABLE ;

__attribute__((used)) static inline int is_ipv6_enabled(struct scsi_qla_host *ha)
{
 return ((ha->ip_config.ipv6_options &
  IPV6_OPT_IPV6_PROTOCOL_ENABLE) != 0);
}
