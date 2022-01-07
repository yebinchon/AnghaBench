
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rspi_data {int dummy; } ;


 int RSPI_SPBFCR ;
 int SPBFCR_RXRST ;
 int SPBFCR_TXRST ;
 int rspi_receive_init (struct rspi_data const*) ;
 int rspi_write8 (struct rspi_data const*,int,int ) ;

__attribute__((used)) static void rspi_rz_receive_init(const struct rspi_data *rspi)
{
 rspi_receive_init(rspi);
 rspi_write8(rspi, SPBFCR_TXRST | SPBFCR_RXRST, RSPI_SPBFCR);
 rspi_write8(rspi, 0, RSPI_SPBFCR);
}
