
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc8xxx_spi {int flags; TYPE_1__* pram; int subblock; } ;
struct TYPE_2__ {int tbase; int tbptr; int tstate; int rbase; int rbptr; int rstate; } ;


 int CPM_CR_INIT_TRX ;
 int CPM_SPI_CMD ;
 int QE_CR_PROTOCOL_UNSPECIFIED ;
 int QE_INIT_TX_RX ;
 int SPI_CPM1 ;
 int SPI_QE ;
 int cpm_command (int ,int ) ;
 int in_be16 (int *) ;
 int out_be16 (int *,int ) ;
 int out_be32 (int *,int ) ;
 int qe_issue_cmd (int ,int ,int ,int ) ;

void fsl_spi_cpm_reinit_txrx(struct mpc8xxx_spi *mspi)
{
 if (mspi->flags & SPI_QE) {
  qe_issue_cmd(QE_INIT_TX_RX, mspi->subblock,
        QE_CR_PROTOCOL_UNSPECIFIED, 0);
 } else {
  if (mspi->flags & SPI_CPM1) {
   out_be32(&mspi->pram->rstate, 0);
   out_be16(&mspi->pram->rbptr,
     in_be16(&mspi->pram->rbase));
   out_be32(&mspi->pram->tstate, 0);
   out_be16(&mspi->pram->tbptr,
     in_be16(&mspi->pram->tbase));
  } else {
   cpm_command(CPM_SPI_CMD, CPM_CR_INIT_TRX);
  }
 }
}
