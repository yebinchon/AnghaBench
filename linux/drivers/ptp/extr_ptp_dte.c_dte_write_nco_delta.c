
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_dte {scalar_t__ ts_ovf_last; int regs; scalar_t__ ts_wrap_cnt; } ;
typedef scalar_t__ s64 ;


 scalar_t__ DTE_NCO_MAX_NS ;
 scalar_t__ DTE_NCO_TS_WRAP_LSHIFT ;
 scalar_t__ DTE_NCO_TS_WRAP_MASK ;
 scalar_t__ abs (scalar_t__) ;
 scalar_t__ dte_read_nco (int ) ;
 int dte_write_nco (int ,scalar_t__) ;

__attribute__((used)) static void dte_write_nco_delta(struct ptp_dte *ptp_dte, s64 delta)
{
 s64 ns;

 ns = dte_read_nco(ptp_dte->regs);


 if ((delta < 0) && (abs(delta) > ns)) {
  if (ptp_dte->ts_wrap_cnt) {
   ns += DTE_NCO_MAX_NS + delta;
   ptp_dte->ts_wrap_cnt--;
  } else {
   ns = 0;
  }
 } else {
  ns += delta;
  if (ns > DTE_NCO_MAX_NS) {
   ptp_dte->ts_wrap_cnt++;
   ns -= DTE_NCO_MAX_NS;
  }
 }

 dte_write_nco(ptp_dte->regs, ns);

 ptp_dte->ts_ovf_last = (ns >> DTE_NCO_TS_WRAP_LSHIFT) &
   DTE_NCO_TS_WRAP_MASK;
}
