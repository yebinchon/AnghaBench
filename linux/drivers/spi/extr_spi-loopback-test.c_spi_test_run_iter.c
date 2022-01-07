
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int test ;
struct spi_test {int iterate_transfer_mask; int transfer_count; TYPE_1__* transfers; int description; } ;
struct spi_device {int dev; } ;
struct TYPE_2__ {size_t len; scalar_t__ rx_buf; scalar_t__ tx_buf; } ;


 int BIT (int) ;
 int _spi_test_run_iter (struct spi_device*,struct spi_test*,void*,void*) ;
 int dev_info (int *,char*,size_t,...) ;
 int dev_warn_once (int *,char*,int ) ;
 int memcpy (struct spi_test*,struct spi_test const*,int) ;

__attribute__((used)) static int spi_test_run_iter(struct spi_device *spi,
        const struct spi_test *testtemplate,
        void *tx, void *rx,
        size_t len,
        size_t tx_off,
        size_t rx_off
 )
{
 struct spi_test test;
 int i, tx_count, rx_count;


 memcpy(&test, testtemplate, sizeof(test));




 if (!(test.iterate_transfer_mask & (BIT(test.transfer_count) - 1)))
  test.iterate_transfer_mask = 1;


 rx_count = tx_count = 0;
 for (i = 0; i < test.transfer_count; i++) {
  if (test.transfers[i].tx_buf)
   tx_count++;
  if (test.transfers[i].rx_buf)
   rx_count++;
 }




 if (tx_off && (!tx_count)) {
  dev_warn_once(&spi->dev,
         "%s: iterate_tx_off configured with tx_buf==NULL - ignoring\n",
         test.description);
  return 0;
 }
 if (rx_off && (!rx_count)) {
  dev_warn_once(&spi->dev,
         "%s: iterate_rx_off configured with rx_buf==NULL - ignoring\n",
         test.description);
  return 0;
 }


 if (!(len || tx_off || rx_off)) {
  dev_info(&spi->dev, "Running test %s\n", test.description);
 } else {
  dev_info(&spi->dev,
    "  with iteration values: len = %zu, tx_off = %zu, rx_off = %zu\n",
    len, tx_off, rx_off);
 }


 for (i = 0; i < test.transfer_count; i++) {

  if (!(test.iterate_transfer_mask & BIT(i)))
   continue;
  test.transfers[i].len = len;
  if (test.transfers[i].tx_buf)
   test.transfers[i].tx_buf += tx_off;
  if (test.transfers[i].tx_buf)
   test.transfers[i].rx_buf += rx_off;
 }


 return _spi_test_run_iter(spi, &test, tx, rx);
}
