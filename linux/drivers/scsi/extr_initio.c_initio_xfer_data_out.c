
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scsi_ctrl_blk {int flags; int buflen; int bufptr; int next_state; scalar_t__ sglen; } ;
struct initio_host {scalar_t__ addr; struct scsi_ctrl_blk* active; } ;


 int SCF_DIN ;
 int SCF_DIR ;
 int SCF_SG ;
 int TAX_SG_OUT ;
 int TAX_X_OUT ;
 int TSC_XF_DMA_OUT ;
 scalar_t__ TUL_SCmd ;
 scalar_t__ TUL_SCnt0 ;
 scalar_t__ TUL_XAddH ;
 scalar_t__ TUL_XCmd ;
 scalar_t__ TUL_XCntH ;
 int outb (int ,scalar_t__) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static int initio_xfer_data_out(struct initio_host * host)
{
 struct scsi_ctrl_blk *scb = host->active;

 if ((scb->flags & SCF_DIR) == SCF_DIN)
  return 6;

 outl(scb->buflen, host->addr + TUL_SCnt0);
 outb(TSC_XF_DMA_OUT, host->addr + TUL_SCmd);

 if (scb->flags & SCF_SG) {
  outl(((u32) scb->sglen) << 3, host->addr + TUL_XCntH);
  outl(scb->bufptr, host->addr + TUL_XAddH);
  outb(TAX_SG_OUT, host->addr + TUL_XCmd);
 } else {
  outl(scb->buflen, host->addr + TUL_XCntH);
  outl(scb->bufptr, host->addr + TUL_XAddH);
  outb(TAX_X_OUT, host->addr + TUL_XCmd);
 }

 scb->next_state = 0x5;
 return 0;
}
