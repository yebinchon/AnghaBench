
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct scsi_qla_host {TYPE_1__* shadow_regs; } ;
struct TYPE_2__ {int req_q_out; } ;


 int le32_to_cpu (int ) ;

uint16_t qla4xxx_rd_shdw_req_q_out(struct scsi_qla_host *ha)
{
 return (uint16_t)le32_to_cpu(ha->shadow_regs->req_q_out);
}
