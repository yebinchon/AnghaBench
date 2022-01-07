
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct initio_host {scalar_t__ addr; } ;


 int MSG_IDE ;
 int TSC_XF_FIFO_OUT ;
 scalar_t__ TUL_SCmd ;
 scalar_t__ TUL_SFifo ;
 int outb (int ,scalar_t__) ;
 int wait_tulip (struct initio_host*) ;

__attribute__((used)) static int initio_msgout_ide(struct initio_host * host)
{
 outb(MSG_IDE, host->addr + TUL_SFifo);
 outb(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
 return wait_tulip(host);
}
