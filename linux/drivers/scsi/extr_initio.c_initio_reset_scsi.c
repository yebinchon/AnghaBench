
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct initio_host {int jsint; scalar_t__ addr; } ;


 int HZ ;
 int SCSI_RESET_SUCCESS ;
 int TSC_RST_BUS ;
 int TSS_SCSIRST_INT ;
 scalar_t__ TUL_SCtrl0 ;
 scalar_t__ TUL_SInt ;
 scalar_t__ TUL_SSignal ;
 int cpu_relax () ;
 int inb (scalar_t__) ;
 int initio_do_pause (int) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static int initio_reset_scsi(struct initio_host * host, int seconds)
{
 outb(TSC_RST_BUS, host->addr + TUL_SCtrl0);

 while (!((host->jsint = inb(host->addr + TUL_SInt)) & TSS_SCSIRST_INT))
  cpu_relax();


 outb(0, host->addr + TUL_SSignal);




 initio_do_pause(seconds * HZ);

 inb(host->addr + TUL_SInt);
 return SCSI_RESET_SUCCESS;
}
