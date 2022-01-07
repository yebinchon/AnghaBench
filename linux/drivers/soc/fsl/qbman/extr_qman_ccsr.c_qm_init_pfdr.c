
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct device {int dummy; } ;


 int DPAA_ASSERT (int) ;
 int EACCES ;
 int EINVAL ;
 int ENODEV ;
 int MCR_INIT_PFDR ;
 int MCR_get_rslt (int ) ;
 scalar_t__ MCR_rslt_eaccess (int ) ;
 int MCR_rslt_idle (int ) ;
 scalar_t__ MCR_rslt_inval (int ) ;
 scalar_t__ MCR_rslt_ok (int ) ;
 int REG_MCP (int) ;
 int REG_MCR ;
 int WARN_ON (int) ;
 int dev_crit (struct device*,char*,...) ;
 int dma_wmb () ;
 int qm_ccsr_in (int ) ;
 int qm_ccsr_out (int ,int) ;

__attribute__((used)) static int qm_init_pfdr(struct device *dev, u32 pfdr_start, u32 num)
{
 u8 rslt = MCR_get_rslt(qm_ccsr_in(REG_MCR));

 DPAA_ASSERT(pfdr_start && !(pfdr_start & 7) && !(num & 7) && num);

 if (!MCR_rslt_idle(rslt)) {
  dev_crit(dev, "QMAN_MCR isn't idle");
  WARN_ON(1);
 }


 qm_ccsr_out(REG_MCP(0), pfdr_start);





 qm_ccsr_out(REG_MCP(1), pfdr_start + num - 16);
 dma_wmb();
 qm_ccsr_out(REG_MCR, MCR_INIT_PFDR);

 do {
  rslt = MCR_get_rslt(qm_ccsr_in(REG_MCR));
 } while (!MCR_rslt_idle(rslt));
 if (MCR_rslt_ok(rslt))
  return 0;
 if (MCR_rslt_eaccess(rslt))
  return -EACCES;
 if (MCR_rslt_inval(rslt))
  return -EINVAL;
 dev_crit(dev, "Unexpected result from MCR_INIT_PFDR: %02x\n", rslt);
 return -ENODEV;
}
