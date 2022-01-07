
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ptp_dte {int ts_ovf_last; int ts_wrap_cnt; int regs; } ;
typedef int s64 ;


 int BIT_ULL (int ) ;
 int DTE_NCO_TS_WRAP_LSHIFT ;
 int DTE_NCO_TS_WRAP_MASK ;
 int DTE_WRAP_AROUND_NSEC_SHIFT ;
 int dte_read_nco (int ) ;

__attribute__((used)) static s64 dte_read_nco_with_ovf(struct ptp_dte *ptp_dte)
{
 u32 ts_ovf;
 s64 ns = 0;

 ns = dte_read_nco(ptp_dte->regs);


 ts_ovf = (ns >> DTE_NCO_TS_WRAP_LSHIFT) & DTE_NCO_TS_WRAP_MASK;


 if (ts_ovf < ptp_dte->ts_ovf_last)
  ptp_dte->ts_wrap_cnt++;

 ptp_dte->ts_ovf_last = ts_ovf;


 ns += (s64)(BIT_ULL(DTE_WRAP_AROUND_NSEC_SHIFT) * ptp_dte->ts_wrap_cnt);

 return ns;
}
