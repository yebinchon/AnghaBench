
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
struct sym_hcb {int istat_sem; int rv_ctest3; } ;
struct sym_data {struct pci_dev* pdev; struct sym_hcb* ncb; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int irqreturn_t ;


 int ABRT ;
 int BF ;
 int CABRT ;
 int CLF ;
 int CSF ;
 int DEBUG_FLAGS ;
 int DEBUG_TINY ;
 int DIP ;
 int GEN ;
 int HTH ;
 int IID ;
 int INB (struct sym_hcb*,int ) ;
 scalar_t__ INL (struct sym_hcb*,int ) ;
 int INTF ;
 int INW (struct sym_hcb*,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MA ;
 int MDPE ;
 int MEMORY_READ_BARRIER () ;
 int OUTB (struct sym_hcb*,int ,int) ;
 int OUTONB_STD () ;
 int PAR ;
 int RST ;
 int SBMC ;
 int SGE ;
 int SIGP ;
 int SIP ;
 int SIR ;
 int SSI ;
 int STO ;
 int TE ;
 int UDC ;
 int nc_ctest3 ;
 int nc_dbc ;
 int nc_dsp ;
 int nc_dstat ;
 int nc_istat ;
 int nc_scr0 ;
 int nc_sist ;
 int nc_stest3 ;
 scalar_t__ pci_channel_offline (struct pci_dev*) ;
 int printf (char*,...) ;
 struct sym_data* shost_priv (struct Scsi_Host*) ;
 int sym_int_ma (struct sym_hcb*) ;
 int sym_int_par (struct sym_hcb*,int) ;
 int sym_int_sbmc (struct Scsi_Host*) ;
 int sym_int_sir (struct sym_hcb*) ;
 int sym_int_sto (struct sym_hcb*) ;
 int sym_int_udc (struct sym_hcb*) ;
 int sym_log_hard_error (struct Scsi_Host*,int,int) ;
 char* sym_name (struct sym_hcb*) ;
 int sym_start_reset (struct sym_hcb*) ;
 int sym_start_up (struct Scsi_Host*,int) ;
 int sym_wakeup_done (struct sym_hcb*) ;
 scalar_t__ unlikely (int) ;

irqreturn_t sym_interrupt(struct Scsi_Host *shost)
{
 struct sym_data *sym_data = shost_priv(shost);
 struct sym_hcb *np = sym_data->ncb;
 struct pci_dev *pdev = sym_data->pdev;
 u_char istat, istatc;
 u_char dstat;
 u_short sist;
 istat = INB(np, nc_istat);
 if (istat & INTF) {
  OUTB(np, nc_istat, (istat & SIGP) | INTF | np->istat_sem);
  istat |= INB(np, nc_istat);
  if (DEBUG_FLAGS & DEBUG_TINY) printf ("F ");
  sym_wakeup_done(np);
 }

 if (!(istat & (SIP|DIP)))
  return (istat & INTF) ? IRQ_HANDLED : IRQ_NONE;
 sist = 0;
 dstat = 0;
 istatc = istat;
 do {
  if (istatc & SIP)
   sist |= INW(np, nc_sist);
  if (istatc & DIP)
   dstat |= INB(np, nc_dstat);
  istatc = INB(np, nc_istat);
  istat |= istatc;



  if (unlikely(sist == 0xffff && dstat == 0xff)) {
   if (pci_channel_offline(pdev))
    return IRQ_NONE;
  }
 } while (istatc & (SIP|DIP));

 if (DEBUG_FLAGS & DEBUG_TINY)
  printf ("<%d|%x:%x|%x:%x>",
   (int)INB(np, nc_scr0),
   dstat,sist,
   (unsigned)INL(np, nc_dsp),
   (unsigned)INL(np, nc_dbc));






 MEMORY_READ_BARRIER();
 if (!(sist & (STO|GEN|HTH|SGE|UDC|SBMC|RST)) &&
     !(dstat & (MDPE|BF|ABRT|IID))) {
  if (sist & PAR) sym_int_par (np, sist);
  else if (sist & MA) sym_int_ma (np);
  else if (dstat & SIR) sym_int_sir(np);
  else if (dstat & SSI) OUTONB_STD();
  else goto unknown_int;
  return IRQ_HANDLED;
 }
 if (sist & RST) {
  printf("%s: SCSI BUS reset detected.\n", sym_name(np));
  sym_start_up(shost, 1);
  return IRQ_HANDLED;
 }

 OUTB(np, nc_ctest3, np->rv_ctest3 | CLF);
 OUTB(np, nc_stest3, TE|CSF);

 if (!(sist & (GEN|HTH|SGE)) &&
     !(dstat & (MDPE|BF|ABRT|IID))) {
  if (sist & SBMC) sym_int_sbmc(shost);
  else if (sist & STO) sym_int_sto (np);
  else if (sist & UDC) sym_int_udc (np);
  else goto unknown_int;
  return IRQ_HANDLED;
 }
 sym_log_hard_error(shost, sist, dstat);

 if ((sist & (GEN|HTH|SGE)) ||
  (dstat & (MDPE|BF|ABRT|IID))) {
  sym_start_reset(np);
  return IRQ_HANDLED;
 }

unknown_int:




 printf( "%s: unknown interrupt(s) ignored, "
  "ISTAT=0x%x DSTAT=0x%x SIST=0x%x\n",
  sym_name(np), istat, dstat, sist);
 return IRQ_NONE;
}
