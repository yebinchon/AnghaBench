
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * s6_addr32; } ;
struct TYPE_4__ {TYPE_1__ ipv6_default_router_addr; } ;
struct scsi_qla_host {TYPE_2__ ip_config; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void qla4xxx_default_router_changed(struct scsi_qla_host *ha,
        uint32_t *mbox_sts)
{
 memcpy(&ha->ip_config.ipv6_default_router_addr.s6_addr32[0],
        &mbox_sts[2], sizeof(uint32_t));
 memcpy(&ha->ip_config.ipv6_default_router_addr.s6_addr32[1],
        &mbox_sts[3], sizeof(uint32_t));
 memcpy(&ha->ip_config.ipv6_default_router_addr.s6_addr32[2],
        &mbox_sts[4], sizeof(uint32_t));
 memcpy(&ha->ip_config.ipv6_default_router_addr.s6_addr32[3],
        &mbox_sts[5], sizeof(uint32_t));
}
