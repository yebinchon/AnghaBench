
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uctrl_txn {int inbits; int outbits; int opcode; int* inbuf; int* outbuf; } ;
struct uctrl_driver {TYPE_1__* regs; } ;
struct TYPE_2__ {int uctrl_stat; int uctrl_intr; } ;


 int READUCTLDATA (int) ;
 int WRITEUCTLDATA (int) ;
 int dprintk (char*) ;
 int sbus_readl (int *) ;
 int sbus_writel (int,int *) ;

__attribute__((used)) static void uctrl_do_txn(struct uctrl_driver *driver, struct uctrl_txn *txn)
{
 int stat, incnt, outcnt, bytecnt, intr;
 u32 byte;

 stat = sbus_readl(&driver->regs->uctrl_stat);
 intr = sbus_readl(&driver->regs->uctrl_intr);
 sbus_writel(stat, &driver->regs->uctrl_stat);

 dprintk(("interrupt stat 0x%x int 0x%x\n", stat, intr));

 incnt = txn->inbits;
 outcnt = txn->outbits;
 byte = (txn->opcode << 8);
 WRITEUCTLDATA(byte);

 bytecnt = 0;
 while (incnt > 0) {
  byte = (txn->inbuf[bytecnt] << 8);
  WRITEUCTLDATA(byte);
  incnt--;
  bytecnt++;
 }


 READUCTLDATA(byte);
 dprintk(("ack was %x\n", (byte >> 8)));

 bytecnt = 0;
 while (outcnt > 0) {
  READUCTLDATA(byte);
  txn->outbuf[bytecnt] = (byte >> 8);
  dprintk(("set byte to %02x\n", byte));
  outcnt--;
  bytecnt++;
 }
}
