
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;


 int qla8044_poll_wait_for_ready (struct scsi_qla_host*,int ,int ) ;
 int qla8044_wr_reg_indirect (struct scsi_qla_host*,int ,int ) ;

__attribute__((used)) static int
qla8044_ipmdio_wr_reg(struct scsi_qla_host *vha, uint32_t addr1,
 uint32_t addr3, uint32_t mask, uint32_t addr, uint32_t value)
{
 int ret = 0;

 ret = qla8044_poll_wait_for_ready(vha, addr1, mask);
 if (ret == -1)
  return -1;

 qla8044_wr_reg_indirect(vha, addr3, value);
 qla8044_wr_reg_indirect(vha, addr1, addr);

 ret = qla8044_poll_wait_for_ready(vha, addr1, mask);
 if (ret == -1)
  return -1;

 return 0;
}
