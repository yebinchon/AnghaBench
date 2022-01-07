
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {scalar_t__ dir; scalar_t__ nbytes; } ;
struct TYPE_10__ {int buswidth; int nbytes; int val; } ;
struct TYPE_8__ {int opcode; } ;
struct TYPE_7__ {int buswidth; int nbytes; } ;
struct spi_mem_op {TYPE_5__ data; TYPE_4__ addr; TYPE_2__ cmd; TYPE_1__ dummy; } ;
struct atmel_qspi {scalar_t__ mr; scalar_t__ regs; TYPE_3__* caps; } ;
struct TYPE_12__ {int config; } ;
struct TYPE_9__ {scalar_t__ has_ricr; } ;


 int ENOTSUPP ;
 scalar_t__ QSPI_IAR ;
 scalar_t__ QSPI_ICR ;
 int QSPI_ICR_INST (int) ;
 int QSPI_ICR_OPT (int) ;
 scalar_t__ QSPI_IFR ;
 int QSPI_IFR_ADDREN ;
 int QSPI_IFR_ADDRL ;
 int QSPI_IFR_APBTFRTYP_READ ;
 int QSPI_IFR_DATAEN ;
 int QSPI_IFR_INSTEN ;
 int QSPI_IFR_NBDUM (int) ;
 int QSPI_IFR_OPTEN ;
 int QSPI_IFR_OPTL_8BIT ;
 int QSPI_IFR_SAMA5D2_WRITE_TRSFR ;
 scalar_t__ QSPI_MR ;
 scalar_t__ QSPI_MR_SMM ;
 scalar_t__ QSPI_RICR ;
 scalar_t__ QSPI_SR ;
 scalar_t__ QSPI_WICR ;
 scalar_t__ SPI_MEM_DATA_IN ;
 scalar_t__ SPI_MEM_DATA_OUT ;
 int atmel_qspi_find_mode (struct spi_mem_op const*) ;
 TYPE_6__* atmel_qspi_modes ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int atmel_qspi_set_cfg(struct atmel_qspi *aq,
         const struct spi_mem_op *op, u32 *offset)
{
 u32 iar, icr, ifr;
 u32 dummy_cycles = 0;
 int mode;

 iar = 0;
 icr = QSPI_ICR_INST(op->cmd.opcode);
 ifr = QSPI_IFR_INSTEN;

 mode = atmel_qspi_find_mode(op);
 if (mode < 0)
  return mode;
 ifr |= atmel_qspi_modes[mode].config;

 if (op->dummy.buswidth && op->dummy.nbytes)
  dummy_cycles = op->dummy.nbytes * 8 / op->dummy.buswidth;
 if (op->addr.buswidth) {
  switch (op->addr.nbytes) {
  case 0:
   break;
  case 1:
   ifr |= QSPI_IFR_OPTEN | QSPI_IFR_OPTL_8BIT;
   icr |= QSPI_ICR_OPT(op->addr.val & 0xff);
   break;
  case 2:
   if (dummy_cycles < 8 / op->addr.buswidth) {
    ifr &= ~QSPI_IFR_INSTEN;
    ifr |= QSPI_IFR_ADDREN;
    iar = (op->cmd.opcode << 16) |
     (op->addr.val & 0xffff);
   } else {
    ifr |= QSPI_IFR_ADDREN;
    iar = (op->addr.val << 8) & 0xffffff;
    dummy_cycles -= 8 / op->addr.buswidth;
   }
   break;
  case 3:
   ifr |= QSPI_IFR_ADDREN;
   iar = op->addr.val & 0xffffff;
   break;
  case 4:
   ifr |= QSPI_IFR_ADDREN | QSPI_IFR_ADDRL;
   iar = op->addr.val & 0x7ffffff;
   break;
  default:
   return -ENOTSUPP;
  }
 }


 *offset = iar;


 if (dummy_cycles)
  ifr |= QSPI_IFR_NBDUM(dummy_cycles);


 if (op->data.nbytes)
  ifr |= QSPI_IFR_DATAEN;





 if (aq->mr != QSPI_MR_SMM) {
  writel_relaxed(QSPI_MR_SMM, aq->regs + QSPI_MR);
  aq->mr = QSPI_MR_SMM;
 }


 (void)readl_relaxed(aq->regs + QSPI_SR);

 if (aq->caps->has_ricr) {
  if (!op->addr.nbytes && op->data.dir == SPI_MEM_DATA_IN)
   ifr |= QSPI_IFR_APBTFRTYP_READ;


  writel_relaxed(iar, aq->regs + QSPI_IAR);
  if (op->data.dir == SPI_MEM_DATA_IN)
   writel_relaxed(icr, aq->regs + QSPI_RICR);
  else
   writel_relaxed(icr, aq->regs + QSPI_WICR);
  writel_relaxed(ifr, aq->regs + QSPI_IFR);
 } else {
  if (op->data.dir == SPI_MEM_DATA_OUT)
   ifr |= QSPI_IFR_SAMA5D2_WRITE_TRSFR;


  writel_relaxed(iar, aq->regs + QSPI_IAR);
  writel_relaxed(icr, aq->regs + QSPI_ICR);
  writel_relaxed(ifr, aq->regs + QSPI_IFR);
 }

 return 0;
}
