
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct td {int hwBE; int hwCBP; int hwNextTD; int index; int urb; int hwINFO; } ;
struct ohci_hcd {int dummy; } ;


 unsigned int MAXPSW ;
 int TD_CC_GET (int) ;
 int TD_DI ;
 int TD_DONE ;
 int TD_DP ;



 int TD_ISO ;
 int TD_R ;
 int TD_T ;



 char* data0 ;
 char* data1 ;
 int hc32_to_cpup (struct ohci_hcd const*,int *) ;
 int ohci_dbg (struct ohci_hcd const*,char*,...) ;
 int ohci_hwPSW (struct ohci_hcd const*,struct td const*,unsigned int) ;

__attribute__((used)) static void ohci_dump_td (const struct ohci_hcd *ohci, const char *label,
  const struct td *td)
{
 u32 tmp = hc32_to_cpup (ohci, &td->hwINFO);

 ohci_dbg (ohci, "%s td %p%s; urb %p index %d; hw next td %08x\n",
  label, td,
  (tmp & TD_DONE) ? " (DONE)" : "",
  td->urb, td->index,
  hc32_to_cpup (ohci, &td->hwNextTD));
 if ((tmp & TD_ISO) == 0) {
  const char *toggle, *pid;
  u32 cbp, be;

  switch (tmp & TD_T) {
  case 130: toggle = data0; break;
  case 129: toggle = data1; break;
  case 128: toggle = "(CARRY)"; break;
  default: toggle = "(?)"; break;
  }
  switch (tmp & TD_DP) {
  case 131: pid = "SETUP"; break;
  case 133: pid = "IN"; break;
  case 132: pid = "OUT"; break;
  default: pid = "(bad pid)"; break;
  }
  ohci_dbg (ohci, "     info %08x CC=%x %s DI=%d %s %s\n", tmp,
   TD_CC_GET(tmp), toggle,
   (tmp & TD_DI) >> 21, pid,
   (tmp & TD_R) ? "R" : "");
  cbp = hc32_to_cpup (ohci, &td->hwCBP);
  be = hc32_to_cpup (ohci, &td->hwBE);
  ohci_dbg (ohci, "     cbp %08x be %08x (len %d)\n", cbp, be,
   cbp ? (be + 1 - cbp) : 0);
 } else {
  unsigned i;
  ohci_dbg (ohci, "  info %08x CC=%x FC=%d DI=%d SF=%04x\n", tmp,
   TD_CC_GET(tmp),
   (tmp >> 24) & 0x07,
   (tmp & TD_DI) >> 21,
   tmp & 0x0000ffff);
  ohci_dbg (ohci, "  bp0 %08x be %08x\n",
   hc32_to_cpup (ohci, &td->hwCBP) & ~0x0fff,
   hc32_to_cpup (ohci, &td->hwBE));
  for (i = 0; i < MAXPSW; i++) {
   u16 psw = ohci_hwPSW (ohci, td, i);
   int cc = (psw >> 12) & 0x0f;
   ohci_dbg (ohci, "    psw [%d] = %2x, CC=%x %s=%d\n", i,
    psw, cc,
    (cc >= 0x0e) ? "OFFSET" : "SIZE",
    psw & 0x0fff);
  }
 }
}
