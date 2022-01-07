
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rspi_data {TYPE_1__* ctlr; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int rspi_read_data (struct rspi_data*) ;
 int rspi_wait_for_rx_full (struct rspi_data*) ;

__attribute__((used)) static int rspi_data_in(struct rspi_data *rspi)
{
 int error;
 u8 data;

 error = rspi_wait_for_rx_full(rspi);
 if (error < 0) {
  dev_err(&rspi->ctlr->dev, "receive timeout\n");
  return error;
 }
 data = rspi_read_data(rspi);
 return data;
}
