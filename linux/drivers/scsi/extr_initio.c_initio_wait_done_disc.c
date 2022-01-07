
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct initio_host {int jsstatus0; int jsint; int * active; scalar_t__ addr; } ;


 int TSC_FLUSH_FIFO ;
 int TSC_HW_RESELECT ;
 int TSC_INITDEFAULT ;
 int TSS_DISC_INT ;
 int TSS_INT_PENDING ;
 int TSS_SCSIRST_INT ;
 scalar_t__ TUL_SConfig ;
 scalar_t__ TUL_SCtrl0 ;
 scalar_t__ TUL_SCtrl1 ;
 scalar_t__ TUL_SInt ;
 scalar_t__ TUL_SStatus0 ;
 int cpu_relax () ;
 void* inb (scalar_t__) ;
 int initio_append_done_scb (struct initio_host*,int *) ;
 int initio_bad_seq (struct initio_host*) ;
 int initio_unlink_busy_scb (struct initio_host*,int *) ;
 int int_initio_scsi_rst (struct initio_host*) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static int initio_wait_done_disc(struct initio_host * host)
{
 while (!((host->jsstatus0 = inb(host->addr + TUL_SStatus0))
   & TSS_INT_PENDING))
   cpu_relax();

 host->jsint = inb(host->addr + TUL_SInt);

 if (host->jsint & TSS_SCSIRST_INT)
  return int_initio_scsi_rst(host);
 if (host->jsint & TSS_DISC_INT) {
  outb(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0);
  outb(TSC_INITDEFAULT, host->addr + TUL_SConfig);
  outb(TSC_HW_RESELECT, host->addr + TUL_SCtrl1);
  initio_unlink_busy_scb(host, host->active);

  initio_append_done_scb(host, host->active);
  host->active = ((void*)0);
  return -1;
 }
 return initio_bad_seq(host);
}
