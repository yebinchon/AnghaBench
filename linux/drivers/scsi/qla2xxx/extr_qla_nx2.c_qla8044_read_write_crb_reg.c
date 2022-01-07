
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;


 int qla8044_rd_reg_indirect (struct scsi_qla_host*,int ,int *) ;
 int qla8044_wr_reg_indirect (struct scsi_qla_host*,int ,int ) ;

__attribute__((used)) static void
qla8044_read_write_crb_reg(struct scsi_qla_host *vha,
 uint32_t raddr, uint32_t waddr)
{
 uint32_t value;

 qla8044_rd_reg_indirect(vha, raddr, &value);
 qla8044_wr_reg_indirect(vha, waddr, value);
}
