
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum qm_dc_portal { ____Placeholder_qm_dc_portal } qm_dc_portal ;


 int DPAA_ASSERT (int) ;
 int QMAN_REV30 ;
 int REG_DCP_CFG (int) ;
 int qm_ccsr_out (int ,int) ;
 int qm_dc_portal_fman0 ;
 int qm_dc_portal_fman1 ;
 int qman_ip_rev ;

__attribute__((used)) static void qm_set_dc(enum qm_dc_portal portal, int ed, u8 sernd)
{
 DPAA_ASSERT(!ed || portal == qm_dc_portal_fman0 ||
      portal == qm_dc_portal_fman1);
 if ((qman_ip_rev & 0xFF00) >= QMAN_REV30)
  qm_ccsr_out(REG_DCP_CFG(portal),
       (ed ? 0x1000 : 0) | (sernd & 0x3ff));
 else
  qm_ccsr_out(REG_DCP_CFG(portal),
       (ed ? 0x100 : 0) | (sernd & 0x1f));
}
