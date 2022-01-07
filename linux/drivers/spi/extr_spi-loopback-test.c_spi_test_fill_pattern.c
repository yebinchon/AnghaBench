
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {int len; scalar_t__ tx_buf; scalar_t__ rx_buf; } ;
struct spi_test {int transfer_count; int fill_option; int fill_pattern; struct spi_transfer* transfers; } ;
struct spi_device {int dev; } ;


 int EINVAL ;
 int GET_VALUE_BYTE (int,int,int) ;
 int SPI_TEST_PATTERN_UNWRITTEN ;
 int dev_err (int *,char*,int) ;
 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static int spi_test_fill_pattern(struct spi_device *spi,
     struct spi_test *test)
{
 struct spi_transfer *xfers = test->transfers;
 u8 *tx_buf;
 size_t count = 0;
 int i, j;
 for (i = 0; i < test->transfer_count; i++) {

  if (xfers[i].rx_buf)
   memset(xfers[i].rx_buf, SPI_TEST_PATTERN_UNWRITTEN,
          xfers[i].len);

  tx_buf = (u8 *)xfers[i].tx_buf;
  if (!tx_buf)
   continue;

  for (j = 0; j < xfers[i].len; j++, tx_buf++, count++) {

   switch (test->fill_option) {
   case 133:
    *tx_buf = test->fill_pattern;
    break;
   case 136:
    *tx_buf = (test->fill_pattern >> (8 * (count % 2)));

    break;
   case 135:
    *tx_buf = (test->fill_pattern >> (8 * (count % 3)));

    break;
   case 134:
    *tx_buf = (test->fill_pattern >> (8 * (count % 4)));

    break;
   case 137:
    *tx_buf = count;
    break;
   case 140:
    *tx_buf = (count >> (8 * (count % 2)));
    break;
   case 139:
    *tx_buf = (count >> (8 * (count % 3)));
    break;
   case 138:
    *tx_buf = (count >> (8 * (count % 4)));
    break;
   case 129:
    *tx_buf = j;
    break;
   case 132:
    *tx_buf = (j >> (8 * (count % 2)));
    break;
   case 131:
    *tx_buf = (j >> (8 * (count % 3)));
    break;
   case 130:
    *tx_buf = (j >> (8 * (count % 4)));
    break;
   case 128:
    *tx_buf = i;
    break;
   default:
    dev_err(&spi->dev,
     "unsupported fill_option: %i\n",
     test->fill_option);
    return -EINVAL;
   }
  }
 }

 return 0;
}
