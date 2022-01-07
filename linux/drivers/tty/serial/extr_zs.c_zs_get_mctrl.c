
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_scc {int zlock; } ;
struct zs_port {struct zs_scc* scc; } ;
struct uart_port {int dummy; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct zs_port* to_zport (struct uart_port*) ;
 unsigned int zs_raw_get_mctrl (struct zs_port*) ;

__attribute__((used)) static unsigned int zs_get_mctrl(struct uart_port *uport)
{
 struct zs_port *zport = to_zport(uport);
 struct zs_scc *scc = zport->scc;
 unsigned int mctrl;

 spin_lock(&scc->zlock);
 mctrl = zs_raw_get_mctrl(zport);
 spin_unlock(&scc->zlock);

 return mctrl;
}
