
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cnt; } ;
union cvmx_ciu_wdogx {void* u64; TYPE_1__ s; } ;
typedef int u64 ;


 int CVMX_CIU2_EN_PPX_IP2_RML (unsigned int) ;
 int CVMX_CIU2_EN_PPX_IP2_WDOG (unsigned int) ;
 int CVMX_CIU2_SRC_PPX_IP2_RML (unsigned int) ;
 int CVMX_CIU2_SRC_PPX_IP2_WDOG (unsigned int) ;
 int CVMX_CIU2_SUM_PPX_IP2 (unsigned int) ;
 int CVMX_CIU_INTX_EN0 (unsigned int) ;
 int CVMX_CIU_INTX_SUM0 (unsigned int) ;
 int CVMX_CIU_WDOGX (unsigned int) ;
 int CVMX_GSERX_SCRATCH (int ) ;
 int CVMX_RST_SOFT_RST ;
 int OCTEON_CN68XX ;
 int OCTEON_CN70XX ;
 int OCTEON_FEATURE_CIU3 ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 scalar_t__ OCTEON_IS_OCTEON3 () ;
 unsigned int cvmx_get_core_num () ;
 unsigned int cvmx_get_local_core_num () ;
 unsigned int cvmx_get_node_num () ;
 int cvmx_read_csr (int ) ;
 void* cvmx_read_csr_node (unsigned int,int ) ;
 int cvmx_write_csr_node (int ,int ,int) ;
 int octeon_has_feature (int ) ;
 int octeon_wdt_write_hex (int,int) ;
 int octeon_wdt_write_string (char*) ;
 int read_c0_cause () ;
 int read_c0_epc () ;
 int read_c0_errorepc () ;
 int read_c0_status () ;
 char** reg_name ;
 int udelay (int) ;

void octeon_wdt_nmi_stage3(u64 reg[32])
{
 u64 i;

 unsigned int coreid = cvmx_get_core_num();




 u64 cp0_cause = read_c0_cause();
 u64 cp0_status = read_c0_status();
 u64 cp0_error_epc = read_c0_errorepc();
 u64 cp0_epc = read_c0_epc();


 udelay(85000 * coreid);

 octeon_wdt_write_string("\r\n*** NMI Watchdog interrupt on Core 0x");
 octeon_wdt_write_hex(coreid, 2);
 octeon_wdt_write_string(" ***\r\n");
 for (i = 0; i < 32; i++) {
  octeon_wdt_write_string("\t");
  octeon_wdt_write_string(reg_name[i]);
  octeon_wdt_write_string("\t0x");
  octeon_wdt_write_hex(reg[i], 16);
  if (i & 1)
   octeon_wdt_write_string("\r\n");
 }
 octeon_wdt_write_string("\terr_epc\t0x");
 octeon_wdt_write_hex(cp0_error_epc, 16);

 octeon_wdt_write_string("\tepc\t0x");
 octeon_wdt_write_hex(cp0_epc, 16);
 octeon_wdt_write_string("\r\n");

 octeon_wdt_write_string("\tstatus\t0x");
 octeon_wdt_write_hex(cp0_status, 16);
 octeon_wdt_write_string("\tcause\t0x");
 octeon_wdt_write_hex(cp0_cause, 16);
 octeon_wdt_write_string("\r\n");


 if (OCTEON_IS_MODEL(OCTEON_CN68XX)) {
  octeon_wdt_write_string("\tsrc_wd\t0x");
  octeon_wdt_write_hex(cvmx_read_csr(CVMX_CIU2_SRC_PPX_IP2_WDOG(coreid)), 16);
  octeon_wdt_write_string("\ten_wd\t0x");
  octeon_wdt_write_hex(cvmx_read_csr(CVMX_CIU2_EN_PPX_IP2_WDOG(coreid)), 16);
  octeon_wdt_write_string("\r\n");
  octeon_wdt_write_string("\tsrc_rml\t0x");
  octeon_wdt_write_hex(cvmx_read_csr(CVMX_CIU2_SRC_PPX_IP2_RML(coreid)), 16);
  octeon_wdt_write_string("\ten_rml\t0x");
  octeon_wdt_write_hex(cvmx_read_csr(CVMX_CIU2_EN_PPX_IP2_RML(coreid)), 16);
  octeon_wdt_write_string("\r\n");
  octeon_wdt_write_string("\tsum\t0x");
  octeon_wdt_write_hex(cvmx_read_csr(CVMX_CIU2_SUM_PPX_IP2(coreid)), 16);
  octeon_wdt_write_string("\r\n");
 } else if (!octeon_has_feature(OCTEON_FEATURE_CIU3)) {
  octeon_wdt_write_string("\tsum0\t0x");
  octeon_wdt_write_hex(cvmx_read_csr(CVMX_CIU_INTX_SUM0(coreid * 2)), 16);
  octeon_wdt_write_string("\ten0\t0x");
  octeon_wdt_write_hex(cvmx_read_csr(CVMX_CIU_INTX_EN0(coreid * 2)), 16);
  octeon_wdt_write_string("\r\n");
 }

 octeon_wdt_write_string("*** Chip soft reset soon ***\r\n");





 if (OCTEON_IS_OCTEON3() && !OCTEON_IS_MODEL(OCTEON_CN70XX)) {
  u64 scr;
  unsigned int node = cvmx_get_node_num();
  unsigned int lcore = cvmx_get_local_core_num();
  union cvmx_ciu_wdogx ciu_wdog;






  do {
   ciu_wdog.u64 = cvmx_read_csr_node(node, CVMX_CIU_WDOGX(lcore));
  } while (ciu_wdog.s.cnt > 0x10000);

  scr = cvmx_read_csr_node(0, CVMX_GSERX_SCRATCH(0));
  scr |= 1 << 11;
  cvmx_write_csr_node(0, CVMX_GSERX_SCRATCH(0), scr);
  cvmx_write_csr_node(0, CVMX_RST_SOFT_RST, 1);
 }
}
