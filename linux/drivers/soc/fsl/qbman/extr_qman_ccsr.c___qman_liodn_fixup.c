
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int LIO_CFG_LIODN_MASK ;
 int QMAN_REV30 ;
 int QM_CHANNEL_SWPORTAL0 ;
 int REG_QCSP_LIO_CFG (int) ;
 int REG_REV3_QCSP_LIO_CFG (int) ;
 int qm_ccsr_in (int ) ;
 int qm_ccsr_out (int ,int) ;
 int qman_ip_rev ;

void __qman_liodn_fixup(u16 channel)
{
 static int done;
 static u32 liodn_offset;
 u32 before, after;
 int idx = channel - QM_CHANNEL_SWPORTAL0;

 if ((qman_ip_rev & 0xFF00) >= QMAN_REV30)
  before = qm_ccsr_in(REG_REV3_QCSP_LIO_CFG(idx));
 else
  before = qm_ccsr_in(REG_QCSP_LIO_CFG(idx));
 if (!done) {
  liodn_offset = before & LIO_CFG_LIODN_MASK;
  done = 1;
  return;
 }
 after = (before & (~LIO_CFG_LIODN_MASK)) | liodn_offset;
 if ((qman_ip_rev & 0xFF00) >= QMAN_REV30)
  qm_ccsr_out(REG_REV3_QCSP_LIO_CFG(idx), after);
 else
  qm_ccsr_out(REG_QCSP_LIO_CFG(idx), after);
}
