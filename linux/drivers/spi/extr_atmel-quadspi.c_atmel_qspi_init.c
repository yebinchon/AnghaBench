
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_qspi {scalar_t__ regs; int mr; } ;


 scalar_t__ QSPI_CR ;
 int QSPI_CR_QSPIEN ;
 int QSPI_CR_SWRST ;
 scalar_t__ QSPI_MR ;
 int QSPI_MR_SMM ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void atmel_qspi_init(struct atmel_qspi *aq)
{

 writel_relaxed(QSPI_CR_SWRST, aq->regs + QSPI_CR);


 writel_relaxed(QSPI_MR_SMM, aq->regs + QSPI_MR);
 aq->mr = QSPI_MR_SMM;


 writel_relaxed(QSPI_CR_QSPIEN, aq->regs + QSPI_CR);
}
