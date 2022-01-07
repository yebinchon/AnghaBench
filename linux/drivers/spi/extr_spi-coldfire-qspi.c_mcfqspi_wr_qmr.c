
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mcfqspi {scalar_t__ iobase; } ;


 scalar_t__ MCFQSPI_QMR ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void mcfqspi_wr_qmr(struct mcfqspi *mcfqspi, u16 val)
{
 writew(val, mcfqspi->iobase + MCFQSPI_QMR);
}
