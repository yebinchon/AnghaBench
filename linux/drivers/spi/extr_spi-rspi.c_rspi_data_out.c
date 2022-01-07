
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rspi_data {TYPE_1__* ctlr; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int rspi_wait_for_tx_empty (struct rspi_data*) ;
 int rspi_write_data (struct rspi_data*,int ) ;

__attribute__((used)) static int rspi_data_out(struct rspi_data *rspi, u8 data)
{
 int error = rspi_wait_for_tx_empty(rspi);
 if (error < 0) {
  dev_err(&rspi->ctlr->dev, "transmit timeout\n");
  return error;
 }
 rspi_write_data(rspi, data);
 return 0;
}
