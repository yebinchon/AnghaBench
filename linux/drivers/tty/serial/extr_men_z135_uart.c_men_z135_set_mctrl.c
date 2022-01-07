
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {scalar_t__ membase; } ;


 scalar_t__ MEN_Z135_CONF_REG ;
 int MEN_Z135_MCR_DTR ;
 int MEN_Z135_MCR_LOOP ;
 int MEN_Z135_MCR_OUT1 ;
 int MEN_Z135_MCR_OUT2 ;
 int MEN_Z135_MCR_RTS ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_LOOP ;
 unsigned int TIOCM_OUT1 ;
 unsigned int TIOCM_OUT2 ;
 unsigned int TIOCM_RTS ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void men_z135_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 u32 old;
 u32 conf_reg;

 conf_reg = old = ioread32(port->membase + MEN_Z135_CONF_REG);
 if (mctrl & TIOCM_RTS)
  conf_reg |= MEN_Z135_MCR_RTS;
 else
  conf_reg &= ~MEN_Z135_MCR_RTS;

 if (mctrl & TIOCM_DTR)
  conf_reg |= MEN_Z135_MCR_DTR;
 else
  conf_reg &= ~MEN_Z135_MCR_DTR;

 if (mctrl & TIOCM_OUT1)
  conf_reg |= MEN_Z135_MCR_OUT1;
 else
  conf_reg &= ~MEN_Z135_MCR_OUT1;

 if (mctrl & TIOCM_OUT2)
  conf_reg |= MEN_Z135_MCR_OUT2;
 else
  conf_reg &= ~MEN_Z135_MCR_OUT2;

 if (mctrl & TIOCM_LOOP)
  conf_reg |= MEN_Z135_MCR_LOOP;
 else
  conf_reg &= ~MEN_Z135_MCR_LOOP;

 if (conf_reg != old)
  iowrite32(conf_reg, port->membase + MEN_Z135_CONF_REG);
}
