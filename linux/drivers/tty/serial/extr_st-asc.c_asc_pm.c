
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int lock; } ;
struct asc_port {int clk; } ;


 int ASC_CTL ;
 int ASC_CTL_RUN ;


 int asc_in (struct uart_port*,int ) ;
 int asc_out (struct uart_port*,int ,int) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct asc_port* to_asc_port (struct uart_port*) ;

__attribute__((used)) static void asc_pm(struct uart_port *port, unsigned int state,
  unsigned int oldstate)
{
 struct asc_port *ascport = to_asc_port(port);
 unsigned long flags = 0;
 u32 ctl;

 switch (state) {
 case 128:
  clk_prepare_enable(ascport->clk);
  break;
 case 129:





  spin_lock_irqsave(&port->lock, flags);
  ctl = asc_in(port, ASC_CTL) & ~ASC_CTL_RUN;
  asc_out(port, ASC_CTL, ctl);
  spin_unlock_irqrestore(&port->lock, flags);
  clk_disable_unprepare(ascport->clk);
  break;
 }
}
