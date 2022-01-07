
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rspi_data {int dummy; } ;


 unsigned int QSPI_BUFFER_SIZE ;
 int QSPI_SPBFCR ;
 int SPBFCR_RXTRG_1B ;
 int SPBFCR_RXTRG_32B ;
 int SPBFCR_RXTRG_MASK ;
 unsigned int min (unsigned int,unsigned int) ;
 int qspi_update (struct rspi_data*,int ,int ,int ) ;

__attribute__((used)) static int qspi_set_receive_trigger(struct rspi_data *rspi, unsigned int len)
{
 unsigned int n;

 n = min(len, QSPI_BUFFER_SIZE);

 if (len >= QSPI_BUFFER_SIZE) {

  qspi_update(rspi, SPBFCR_RXTRG_MASK,
        SPBFCR_RXTRG_32B, QSPI_SPBFCR);
 } else {

  qspi_update(rspi, SPBFCR_RXTRG_MASK,
        SPBFCR_RXTRG_1B, QSPI_SPBFCR);
 }
 return n;
}
