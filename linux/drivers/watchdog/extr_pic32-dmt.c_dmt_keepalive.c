
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pic32_dmt {scalar_t__ regs; } ;


 scalar_t__ DMTCLR_REG ;
 scalar_t__ DMTPRECLR_REG ;
 scalar_t__ DMTSTAT_REG ;
 int DMTSTAT_WINOPN ;
 int DMT_STEP1_KEY ;
 int DMT_STEP2_KEY ;
 int dmt_bad_status (struct pic32_dmt*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline int dmt_keepalive(struct pic32_dmt *dmt)
{
 u32 v;
 u32 timeout = 500;


 writel(DMT_STEP1_KEY << 8, dmt->regs + DMTPRECLR_REG);


 while (--timeout) {
  v = readl(dmt->regs + DMTSTAT_REG) & DMTSTAT_WINOPN;
  if (v == DMTSTAT_WINOPN)
   break;
 }


 writel(DMT_STEP2_KEY, dmt->regs + DMTCLR_REG);


 return dmt_bad_status(dmt);
}
