
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;


 int qla4_83xx_rd_reg_indirect (struct scsi_qla_host*,int ,int *) ;
 int qla4_83xx_wr_reg_indirect (struct scsi_qla_host*,int ,int ) ;

__attribute__((used)) static void qla4_83xx_read_write_crb_reg(struct scsi_qla_host *ha,
      uint32_t raddr, uint32_t waddr)
{
 uint32_t value;

 qla4_83xx_rd_reg_indirect(ha, raddr, &value);
 qla4_83xx_wr_reg_indirect(ha, waddr, value);
}
