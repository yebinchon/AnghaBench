
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mcfqspi {scalar_t__ iobase; } ;


 scalar_t__ MCFQSPI_QDLYR ;
 int readw (scalar_t__) ;

__attribute__((used)) static u16 mcfqspi_rd_qdlyr(struct mcfqspi *mcfqspi)
{
 return readw(mcfqspi->iobase + MCFQSPI_QDLYR);
}
