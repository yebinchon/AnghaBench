
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int irq; int lock; } ;
struct dz_port {TYPE_1__ port; struct dz_mux* mux; } ;
struct dz_mux {int irq_guard; } ;


 int DZ_CSR ;
 int DZ_RIE ;
 int DZ_TIE ;
 int atomic_add_return (int,int *) ;
 int dz_in (struct dz_port*,int ) ;
 int dz_out (struct dz_port*,int ,int) ;
 int dz_stop_tx (TYPE_1__*) ;
 int free_irq (int ,struct dz_mux*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dz_port* to_dport (struct uart_port*) ;

__attribute__((used)) static void dz_shutdown(struct uart_port *uport)
{
 struct dz_port *dport = to_dport(uport);
 struct dz_mux *mux = dport->mux;
 unsigned long flags;
 int irq_guard;
 u16 tmp;

 spin_lock_irqsave(&dport->port.lock, flags);
 dz_stop_tx(&dport->port);
 spin_unlock_irqrestore(&dport->port.lock, flags);

 irq_guard = atomic_add_return(-1, &mux->irq_guard);
 if (!irq_guard) {

  tmp = dz_in(dport, DZ_CSR);
  tmp &= ~(DZ_RIE | DZ_TIE);
  dz_out(dport, DZ_CSR, tmp);

  free_irq(dport->port.irq, mux);
 }
}
