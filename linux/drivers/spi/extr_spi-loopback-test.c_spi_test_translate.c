
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;


 int EINVAL ;
 scalar_t__ RANGE_CHECK (void*,size_t,void*,int) ;
 void* RX (int ) ;
 int SPI_TEST_MAX_SIZE ;
 size_t SPI_TEST_MAX_SIZE_HALF ;
 int SPI_TEST_MAX_SIZE_PLUS ;
 void* TX (int ) ;
 int dev_err (int *,char*,void*,void*,void*,void*,void*,void*) ;

__attribute__((used)) static int spi_test_translate(struct spi_device *spi,
         void **ptr, size_t len,
         void *tx, void *rx)
{
 size_t off;


 if (!*ptr)
  return 0;


 if (((size_t)*ptr) & SPI_TEST_MAX_SIZE_HALF)

  *ptr += (SPI_TEST_MAX_SIZE_PLUS / 2) -
   SPI_TEST_MAX_SIZE_HALF;




 if (RANGE_CHECK(*ptr, len, RX(0), SPI_TEST_MAX_SIZE_PLUS)) {
  off = *ptr - RX(0);
  *ptr = rx + off;

  return 0;
 }


 if (RANGE_CHECK(*ptr, len, TX(0), SPI_TEST_MAX_SIZE_PLUS)) {
  off = *ptr - TX(0);
  *ptr = tx + off;

  return 0;
 }

 dev_err(&spi->dev,
  "PointerRange [%pK:%pK[ not in range [%pK:%pK[ or [%pK:%pK[\n",
  *ptr, *ptr + len,
  RX(0), RX(SPI_TEST_MAX_SIZE),
  TX(0), TX(SPI_TEST_MAX_SIZE));

 return -EINVAL;
}
