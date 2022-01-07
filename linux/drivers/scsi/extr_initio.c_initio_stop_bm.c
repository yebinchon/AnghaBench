
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct initio_host {scalar_t__ addr; } ;


 int TAX_X_ABT ;
 int TAX_X_CLR_FIFO ;
 int TSC_FLUSH_FIFO ;
 scalar_t__ TUL_Int ;
 scalar_t__ TUL_SCtrl0 ;
 scalar_t__ TUL_XCmd ;
 scalar_t__ TUL_XStatus ;
 int XABT ;
 int XPEND ;
 int cpu_relax () ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void initio_stop_bm(struct initio_host * host)
{

 if (inb(host->addr + TUL_XStatus) & XPEND) {
  outb(TAX_X_ABT | TAX_X_CLR_FIFO, host->addr + TUL_XCmd);

  while ((inb(host->addr + TUL_Int) & XABT) == 0)
   cpu_relax();
 }
 outb(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0);
}
