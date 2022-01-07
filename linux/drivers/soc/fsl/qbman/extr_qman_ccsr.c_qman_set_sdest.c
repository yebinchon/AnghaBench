
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef int u16 ;


 unsigned int IO_CFG_SDEST_MASK ;
 int QMAN_REV30 ;
 int QM_CHANNEL_SWPORTAL0 ;
 int REG_QCSP_IO_CFG (int) ;
 int REG_REV3_QCSP_IO_CFG (int) ;
 unsigned int qm_ccsr_in (int ) ;
 int qm_ccsr_out (int ,unsigned int) ;
 int qman_ip_rev ;

void qman_set_sdest(u16 channel, unsigned int cpu_idx)
{
 int idx = channel - QM_CHANNEL_SWPORTAL0;
 u32 before, after;

 if ((qman_ip_rev & 0xFF00) >= QMAN_REV30) {
  before = qm_ccsr_in(REG_REV3_QCSP_IO_CFG(idx));

  cpu_idx /= 2;
  after = (before & (~IO_CFG_SDEST_MASK)) | (cpu_idx << 16);
  qm_ccsr_out(REG_REV3_QCSP_IO_CFG(idx), after);
 } else {
  before = qm_ccsr_in(REG_QCSP_IO_CFG(idx));
  after = (before & (~IO_CFG_SDEST_MASK)) | (cpu_idx << 16);
  qm_ccsr_out(REG_QCSP_IO_CFG(idx), after);
 }
}
