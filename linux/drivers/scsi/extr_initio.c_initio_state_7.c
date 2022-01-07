
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct initio_host {int phase; scalar_t__ addr; } ;




 scalar_t__ TUL_SFifo ;
 scalar_t__ TUL_SFifoCnt ;
 int inb (scalar_t__) ;
 int initio_bad_seq (struct initio_host*) ;
 int printk (char*) ;

int initio_state_7(struct initio_host * host)
{
 int cnt, i;





 cnt = inb(host->addr + TUL_SFifoCnt) & 0x1F;
 if (cnt) {
  for (i = 0; i < cnt; i++)
   inb(host->addr + TUL_SFifo);
 }
 switch (host->phase) {
 case 129:
 case 128:
  return initio_bad_seq(host);
 default:
  return 6;
 }
}
