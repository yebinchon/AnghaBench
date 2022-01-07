
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rspi_data {int dummy; } ;


 int rspi_data_in (struct rspi_data*) ;
 int rspi_data_out (struct rspi_data*,int ) ;

__attribute__((used)) static int rspi_pio_transfer(struct rspi_data *rspi, const u8 *tx, u8 *rx,
        unsigned int n)
{
 while (n-- > 0) {
  if (tx) {
   int ret = rspi_data_out(rspi, *tx++);
   if (ret < 0)
    return ret;
  }
  if (rx) {
   int ret = rspi_data_in(rspi);
   if (ret < 0)
    return ret;
   *rx++ = ret;
  }
 }

 return 0;
}
