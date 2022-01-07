
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct uart_port {scalar_t__ membase; int irq; int dev; } ;
struct stm32_usart_offsets {scalar_t__ rqr; scalar_t__ cr1; scalar_t__ cr3; } ;
struct stm32_port {int cr1_irq; scalar_t__ fifoen; TYPE_1__* info; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {struct stm32_usart_offsets ofs; } ;


 int IRQF_NO_SUSPEND ;
 scalar_t__ UNDEF_REG ;
 int USART_CR1_FIFOEN ;
 int USART_CR1_RE ;
 int USART_CR3_RXFTCFG_HALF ;
 int USART_CR3_RXFTCFG_MASK ;
 int USART_CR3_RXFTCFG_SHIFT ;
 int USART_CR3_TXFTCFG_HALF ;
 int USART_CR3_TXFTCFG_MASK ;
 int USART_CR3_TXFTCFG_SHIFT ;
 int USART_RQR_RXFRQ ;
 int readl_relaxed (scalar_t__) ;
 int request_threaded_irq (int ,int ,int ,int ,char const*,struct uart_port*) ;
 int stm32_interrupt ;
 int stm32_set_bits (struct uart_port*,scalar_t__,int) ;
 int stm32_threaded_interrupt ;
 TYPE_2__* to_platform_device (int ) ;
 struct stm32_port* to_stm32_port (struct uart_port*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int stm32_startup(struct uart_port *port)
{
 struct stm32_port *stm32_port = to_stm32_port(port);
 struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
 const char *name = to_platform_device(port->dev)->name;
 u32 val;
 int ret;

 ret = request_threaded_irq(port->irq, stm32_interrupt,
       stm32_threaded_interrupt,
       IRQF_NO_SUSPEND, name, port);
 if (ret)
  return ret;


 if (ofs->rqr != UNDEF_REG)
  stm32_set_bits(port, ofs->rqr, USART_RQR_RXFRQ);


 if (stm32_port->fifoen) {
  val = readl_relaxed(port->membase + ofs->cr3);
  val &= ~(USART_CR3_TXFTCFG_MASK | USART_CR3_RXFTCFG_MASK);
  val |= USART_CR3_TXFTCFG_HALF << USART_CR3_TXFTCFG_SHIFT;
  val |= USART_CR3_RXFTCFG_HALF << USART_CR3_RXFTCFG_SHIFT;
  writel_relaxed(val, port->membase + ofs->cr3);
 }


 val = stm32_port->cr1_irq | USART_CR1_RE;
 if (stm32_port->fifoen)
  val |= USART_CR1_FIFOEN;
 stm32_set_bits(port, ofs->cr1, val);

 return 0;
}
