
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int fifosize; int flags; int type; int set_divisor; int get_divisor; struct dw8250_port_data* private_data; int dev; } ;
struct uart_8250_port {int capabilities; } ;
struct dw8250_port_data {int dlf_size; } ;


 int DW_UART_CPR ;
 int DW_UART_CPR_AFCE_MODE ;
 int DW_UART_CPR_FIFO_MODE ;
 int DW_UART_CPR_FIFO_SIZE (int) ;
 int DW_UART_CPR_SIR_MODE ;
 int DW_UART_DLF ;
 int DW_UART_UCV ;
 int PORT_16550A ;
 int UART_CAP_AFE ;
 int UART_CAP_FIFO ;
 int UART_CAP_IRDA ;
 int UPF_FIXED_TYPE ;
 int dev_dbg (int ,char*,int,int,int) ;
 int dw8250_get_divisor ;
 int dw8250_readl_ext (struct uart_port*,int ) ;
 int dw8250_set_divisor ;
 int dw8250_writel_ext (struct uart_port*,int ,unsigned int) ;
 int fls (int) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

void dw8250_setup_port(struct uart_port *p)
{
 struct uart_8250_port *up = up_to_u8250p(p);
 u32 reg;





 reg = dw8250_readl_ext(p, DW_UART_UCV);
 if (!reg)
  return;

 dev_dbg(p->dev, "Designware UART version %c.%c%c\n",
  (reg >> 24) & 0xff, (reg >> 16) & 0xff, (reg >> 8) & 0xff);

 dw8250_writel_ext(p, DW_UART_DLF, ~0U);
 reg = dw8250_readl_ext(p, DW_UART_DLF);
 dw8250_writel_ext(p, DW_UART_DLF, 0);

 if (reg) {
  struct dw8250_port_data *d = p->private_data;

  d->dlf_size = fls(reg);
  p->get_divisor = dw8250_get_divisor;
  p->set_divisor = dw8250_set_divisor;
 }

 reg = dw8250_readl_ext(p, DW_UART_CPR);
 if (!reg)
  return;


 if (reg & DW_UART_CPR_FIFO_MODE) {
  p->type = PORT_16550A;
  p->flags |= UPF_FIXED_TYPE;
  p->fifosize = DW_UART_CPR_FIFO_SIZE(reg);
  up->capabilities = UART_CAP_FIFO;
 }

 if (reg & DW_UART_CPR_AFCE_MODE)
  up->capabilities |= UART_CAP_AFE;

 if (reg & DW_UART_CPR_SIR_MODE)
  up->capabilities |= UART_CAP_IRDA;
}
