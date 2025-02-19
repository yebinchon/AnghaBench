
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {scalar_t__ type; int flags; int lock; int mctrl; int status; int dev; int uartclk; } ;
struct sci_port {unsigned int hscif_tot; int autorts; int rx_frame; int rx_timeout; int buf_len_rx; TYPE_1__* cfg; int * clks; int * clk_rates; } ;
struct plat_sci_reg {scalar_t__ size; } ;
struct ktermios {int c_cflag; } ;
struct TYPE_2__ {unsigned int scscr; } ;


 int CREAD ;
 int CRTSCTS ;



 int CSIZE ;
 int CSTOPB ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int DIV_ROUND_UP (int,unsigned int) ;
 unsigned int HSCIF_SRDE ;
 unsigned int HSCIF_SRE ;
 int HSCIF_SRHP_MASK ;
 int HSCIF_SRHP_SHIFT ;
 int HSSRR ;
 int INT_MAX ;
 int PARENB ;
 int PARODD ;
 scalar_t__ PORT_SCIFA ;
 scalar_t__ PORT_SCIFB ;
 int SCBRR ;
 int SCCKS ;
 unsigned int SCCKS_CKS ;
 unsigned int SCCKS_XIN ;
 int SCDL ;
 int SCFCR ;
 unsigned short SCFCR_RFRST ;
 unsigned short SCFCR_TFRST ;
 size_t SCI_BRG_INT ;
 int SCI_FCK ;
 unsigned int SCI_NUM_CLKS ;
 size_t SCI_SCIF_CLK ;
 size_t SCI_SCK ;
 int SCSCR ;
 unsigned int SCSCR_CKE0 ;
 unsigned int SCSCR_CKE1 ;
 unsigned int SCSCR_RE ;
 unsigned int SCSCR_TE ;
 int SCSMR ;
 unsigned int SCSMR_ASYNC ;
 unsigned int SCSMR_CHR ;
 unsigned int SCSMR_CKEDG ;
 unsigned int SCSMR_CKS ;
 unsigned int SCSMR_ODD ;
 unsigned int SCSMR_PE ;
 unsigned int SCSMR_SRC_11 ;
 unsigned int SCSMR_SRC_13 ;
 unsigned int SCSMR_SRC_16 ;
 unsigned int SCSMR_SRC_17 ;
 unsigned int SCSMR_SRC_19 ;
 unsigned int SCSMR_SRC_27 ;
 unsigned int SCSMR_SRC_5 ;
 unsigned int SCSMR_SRC_7 ;
 unsigned int SCSMR_SRC_MASK ;
 unsigned int SCSMR_STOP ;
 scalar_t__ UART_ENABLE_MS (struct uart_port*,int) ;
 int UPF_HARD_FLOW ;
 int UPSTAT_AUTOCTS ;
 int abs (int) ;
 int clamp (int,int,int) ;
 int dev_dbg (int ,char*,int ,unsigned int,int) ;
 unsigned long max (unsigned long,int ) ;
 unsigned long min_sr (struct sci_port*) ;
 int sci_brg_calc (struct sci_port*,unsigned int,int ,unsigned int*,unsigned int*) ;
 int sci_enable_ms (struct uart_port*) ;
 struct plat_sci_reg* sci_getreg (struct uart_port*,int ) ;
 int sci_init_pins (struct uart_port*,int) ;
 int sci_port_disable (struct sci_port*) ;
 int sci_port_enable (struct sci_port*) ;
 int sci_reset (struct uart_port*) ;
 int sci_scbrr_calc (struct sci_port*,unsigned int,unsigned int*,unsigned int*,unsigned int*) ;
 int sci_sck_calc (struct sci_port*,unsigned int,unsigned int*) ;
 int sci_set_mctrl (struct uart_port*,int ) ;
 int sci_start_rx (struct uart_port*) ;
 unsigned int serial_port_in (struct uart_port*,int ) ;
 int serial_port_out (struct uart_port*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sci_port* to_sci_port (struct uart_port*) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,unsigned long) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static void sci_set_termios(struct uart_port *port, struct ktermios *termios,
       struct ktermios *old)
{
 unsigned int baud, smr_val = SCSMR_ASYNC, scr_val = 0, i, bits;
 unsigned int brr = 255, cks = 0, srr = 15, dl = 0, sccks = 0;
 unsigned int brr1 = 255, cks1 = 0, srr1 = 15, dl1 = 0;
 struct sci_port *s = to_sci_port(port);
 const struct plat_sci_reg *reg;
 int min_err = INT_MAX, err;
 unsigned long max_freq = 0;
 int best_clk = -1;
 unsigned long flags;

 if ((termios->c_cflag & CSIZE) == 128)
  smr_val |= SCSMR_CHR;
 if (termios->c_cflag & PARENB)
  smr_val |= SCSMR_PE;
 if (termios->c_cflag & PARODD)
  smr_val |= SCSMR_PE | SCSMR_ODD;
 if (termios->c_cflag & CSTOPB)
  smr_val |= SCSMR_STOP;
 if (!port->uartclk) {
  baud = uart_get_baud_rate(port, termios, old, 0, 115200);
  goto done;
 }

 for (i = 0; i < SCI_NUM_CLKS; i++)
  max_freq = max(max_freq, s->clk_rates[i]);

 baud = uart_get_baud_rate(port, termios, old, 0, max_freq / min_sr(s));
 if (!baud)
  goto done;







 if (s->clk_rates[SCI_SCK] && port->type != PORT_SCIFA &&
     port->type != PORT_SCIFB) {
  err = sci_sck_calc(s, baud, &srr1);
  if (abs(err) < abs(min_err)) {
   best_clk = SCI_SCK;
   scr_val = SCSCR_CKE1;
   sccks = SCCKS_CKS;
   min_err = err;
   srr = srr1;
   if (!err)
    goto done;
  }
 }


 if (s->clk_rates[SCI_SCIF_CLK] && sci_getreg(port, SCDL)->size) {
  err = sci_brg_calc(s, baud, s->clk_rates[SCI_SCIF_CLK], &dl1,
       &srr1);
  if (abs(err) < abs(min_err)) {
   best_clk = SCI_SCIF_CLK;
   scr_val = SCSCR_CKE1;
   sccks = 0;
   min_err = err;
   dl = dl1;
   srr = srr1;
   if (!err)
    goto done;
  }
 }


 if (s->clk_rates[SCI_BRG_INT] && sci_getreg(port, SCDL)->size) {
  err = sci_brg_calc(s, baud, s->clk_rates[SCI_BRG_INT], &dl1,
       &srr1);
  if (abs(err) < abs(min_err)) {
   best_clk = SCI_BRG_INT;
   scr_val = SCSCR_CKE1;
   sccks = SCCKS_XIN;
   min_err = err;
   dl = dl1;
   srr = srr1;
   if (!min_err)
    goto done;
  }
 }


 err = sci_scbrr_calc(s, baud, &brr1, &srr1, &cks1);
 if (abs(err) < abs(min_err)) {
  best_clk = SCI_FCK;
  scr_val = 0;
  min_err = err;
  brr = brr1;
  srr = srr1;
  cks = cks1;
 }

done:
 if (best_clk >= 0)
  dev_dbg(port->dev, "Using clk %pC for %u%+d bps\n",
   s->clks[best_clk], baud, min_err);

 sci_port_enable(s);





 if (best_clk >= 0 && sci_getreg(port, SCCKS)->size) {
  serial_port_out(port, SCDL, dl);
  serial_port_out(port, SCCKS, sccks);
 }

 spin_lock_irqsave(&port->lock, flags);

 sci_reset(port);

 uart_update_timeout(port, termios->c_cflag, baud);


 switch (termios->c_cflag & CSIZE) {
 case 130:
  bits = 7;
  break;
 case 129:
  bits = 8;
  break;
 case 128:
  bits = 9;
  break;
 default:
  bits = 10;
  break;
 }

 if (termios->c_cflag & CSTOPB)
  bits++;
 if (termios->c_cflag & PARENB)
  bits++;

 if (best_clk >= 0) {
  if (port->type == PORT_SCIFA || port->type == PORT_SCIFB)
   switch (srr + 1) {
   case 5: smr_val |= SCSMR_SRC_5; break;
   case 7: smr_val |= SCSMR_SRC_7; break;
   case 11: smr_val |= SCSMR_SRC_11; break;
   case 13: smr_val |= SCSMR_SRC_13; break;
   case 16: smr_val |= SCSMR_SRC_16; break;
   case 17: smr_val |= SCSMR_SRC_17; break;
   case 19: smr_val |= SCSMR_SRC_19; break;
   case 27: smr_val |= SCSMR_SRC_27; break;
   }
  smr_val |= cks;
  serial_port_out(port, SCSCR, scr_val | s->hscif_tot);
  serial_port_out(port, SCSMR, smr_val);
  serial_port_out(port, SCBRR, brr);
  if (sci_getreg(port, HSSRR)->size) {
   unsigned int hssrr = srr | HSCIF_SRE;



   int last_stop = bits * 2 - 1;
   int deviation = DIV_ROUND_CLOSEST(min_err * last_stop *
         (int)(srr + 1),
         2 * (int)baud);

   if (abs(deviation) >= 2) {




    int shift = clamp(deviation / 2, -8, 7);

    hssrr |= (shift << HSCIF_SRHP_SHIFT) &
      HSCIF_SRHP_MASK;
    hssrr |= HSCIF_SRDE;
   }
   serial_port_out(port, HSSRR, hssrr);
  }


  udelay((1000000 + (baud - 1)) / baud);
 } else {

  scr_val = s->cfg->scscr & (SCSCR_CKE1 | SCSCR_CKE0);
  smr_val |= serial_port_in(port, SCSMR) &
      (SCSMR_CKEDG | SCSMR_SRC_MASK | SCSMR_CKS);
  serial_port_out(port, SCSCR, scr_val | s->hscif_tot);
  serial_port_out(port, SCSMR, smr_val);
 }

 sci_init_pins(port, termios->c_cflag);

 port->status &= ~UPSTAT_AUTOCTS;
 s->autorts = 0;
 reg = sci_getreg(port, SCFCR);
 if (reg->size) {
  unsigned short ctrl = serial_port_in(port, SCFCR);

  if ((port->flags & UPF_HARD_FLOW) &&
      (termios->c_cflag & CRTSCTS)) {

   port->status |= UPSTAT_AUTOCTS;

   s->autorts = 1;
  }






  ctrl &= ~(SCFCR_RFRST | SCFCR_TFRST);

  serial_port_out(port, SCFCR, ctrl);
 }
 if (port->flags & UPF_HARD_FLOW) {

  sci_set_mctrl(port, port->mctrl);
 }

 scr_val |= SCSCR_RE | SCSCR_TE |
     (s->cfg->scscr & ~(SCSCR_CKE1 | SCSCR_CKE0));
 serial_port_out(port, SCSCR, scr_val | s->hscif_tot);
 if ((srr + 1 == 5) &&
     (port->type == PORT_SCIFA || port->type == PORT_SCIFB)) {






  udelay(DIV_ROUND_UP(10 * 1000000, baud));
 }
 s->rx_frame = (10000 * bits) / (baud / 100);






 if ((termios->c_cflag & CREAD) != 0)
  sci_start_rx(port);

 spin_unlock_irqrestore(&port->lock, flags);

 sci_port_disable(s);

 if (UART_ENABLE_MS(port, termios->c_cflag))
  sci_enable_ms(port);
}
