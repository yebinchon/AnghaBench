
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcfqspi {int dummy; } ;


 int MCFQSPI_QDLYR_SPE ;
 int mcfqspi_rd_qdlyr (struct mcfqspi*) ;

__attribute__((used)) static bool mcfqspi_qdlyr_spe(struct mcfqspi *mcfqspi)
{
 return mcfqspi_rd_qdlyr(mcfqspi) & MCFQSPI_QDLYR_SPE;
}
