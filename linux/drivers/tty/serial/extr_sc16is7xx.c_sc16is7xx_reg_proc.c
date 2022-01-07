
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sc16is7xx_one_config {int flags; int ier_clear; } ;
struct TYPE_3__ {int mctrl; int lock; } ;
struct sc16is7xx_one {TYPE_1__ port; struct sc16is7xx_one_config config; } ;
struct kthread_work {int dummy; } ;


 int SC16IS7XX_IER_REG ;
 int SC16IS7XX_MCR_DTR_BIT ;
 int SC16IS7XX_MCR_LOOP_BIT ;
 int SC16IS7XX_MCR_REG ;
 int SC16IS7XX_MCR_RTS_BIT ;
 int SC16IS7XX_RECONF_IER ;
 int SC16IS7XX_RECONF_MD ;
 int SC16IS7XX_RECONF_RS485 ;
 int TIOCM_DTR ;
 int TIOCM_LOOP ;
 int TIOCM_RTS ;
 int memset (struct sc16is7xx_one_config*,int ,int) ;
 int reg_work ;
 int sc16is7xx_port_update (TYPE_1__*,int ,int ,int ) ;
 int sc16is7xx_reconf_rs485 (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sc16is7xx_one* to_sc16is7xx_one (struct kthread_work*,int ) ;

__attribute__((used)) static void sc16is7xx_reg_proc(struct kthread_work *ws)
{
 struct sc16is7xx_one *one = to_sc16is7xx_one(ws, reg_work);
 struct sc16is7xx_one_config config;
 unsigned long irqflags;

 spin_lock_irqsave(&one->port.lock, irqflags);
 config = one->config;
 memset(&one->config, 0, sizeof(one->config));
 spin_unlock_irqrestore(&one->port.lock, irqflags);

 if (config.flags & SC16IS7XX_RECONF_MD) {
  sc16is7xx_port_update(&one->port, SC16IS7XX_MCR_REG,
          SC16IS7XX_MCR_LOOP_BIT,
          (one->port.mctrl & TIOCM_LOOP) ?
          SC16IS7XX_MCR_LOOP_BIT : 0);
  sc16is7xx_port_update(&one->port, SC16IS7XX_MCR_REG,
          SC16IS7XX_MCR_RTS_BIT,
          (one->port.mctrl & TIOCM_RTS) ?
          SC16IS7XX_MCR_RTS_BIT : 0);
  sc16is7xx_port_update(&one->port, SC16IS7XX_MCR_REG,
          SC16IS7XX_MCR_DTR_BIT,
          (one->port.mctrl & TIOCM_DTR) ?
          SC16IS7XX_MCR_DTR_BIT : 0);
 }
 if (config.flags & SC16IS7XX_RECONF_IER)
  sc16is7xx_port_update(&one->port, SC16IS7XX_IER_REG,
          config.ier_clear, 0);

 if (config.flags & SC16IS7XX_RECONF_RS485)
  sc16is7xx_reconf_rs485(&one->port);
}
