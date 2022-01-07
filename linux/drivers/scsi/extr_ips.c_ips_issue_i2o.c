
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int command_id; } ;
struct TYPE_8__ {TYPE_1__ basic_io; } ;
struct TYPE_9__ {int scb_busaddr; TYPE_2__ cmd; int lun; int target_id; int bus; int * cdb; scalar_t__ scsi_cmd; } ;
typedef TYPE_3__ ips_scb_t ;
struct TYPE_10__ {scalar_t__ io_addr; int host_num; } ;
typedef TYPE_4__ ips_ha_t ;


 int DEBUG_VAR (int,char*,int ,int ,int ,...) ;
 scalar_t__ IPS_REG_I2O_INMSGQ ;
 int IPS_SUCCESS ;
 int METHOD_TRACE (char*,int) ;
 int ips_name ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static int
ips_issue_i2o(ips_ha_t * ha, ips_scb_t * scb)
{

 METHOD_TRACE("ips_issue_i2o", 1);

 if (scb->scsi_cmd) {
  DEBUG_VAR(2, "(%s%d) ips_issue: cmd 0x%X id %d (%d %d %d)",
     ips_name,
     ha->host_num,
     scb->cdb[0],
     scb->cmd.basic_io.command_id,
     scb->bus, scb->target_id, scb->lun);
 } else {
  DEBUG_VAR(2, "(%s%d) ips_issue: logical cmd id %d",
     ips_name, ha->host_num, scb->cmd.basic_io.command_id);
 }

 outl(scb->scb_busaddr, ha->io_addr + IPS_REG_I2O_INMSGQ);

 return (IPS_SUCCESS);
}
