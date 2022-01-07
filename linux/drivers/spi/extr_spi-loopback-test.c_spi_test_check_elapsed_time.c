
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {unsigned long long len; int speed_hz; scalar_t__ delay_usecs; } ;
struct spi_test {int transfer_count; unsigned long long elapsed_time; struct spi_transfer* transfers; } ;
struct spi_device {int dev; } ;


 scalar_t__ BITS_PER_BYTE ;
 int EINVAL ;
 unsigned long long NSEC_PER_SEC ;
 unsigned long long NSEC_PER_USEC ;
 int dev_err (int *,char*,unsigned long long,unsigned long long) ;
 scalar_t__ div_u64 (unsigned long long,int ) ;

__attribute__((used)) static int spi_test_check_elapsed_time(struct spi_device *spi,
           struct spi_test *test)
{
 int i;
 unsigned long long estimated_time = 0;
 unsigned long long delay_usecs = 0;

 for (i = 0; i < test->transfer_count; i++) {
  struct spi_transfer *xfer = test->transfers + i;
  unsigned long long nbits = (unsigned long long)BITS_PER_BYTE *
        xfer->len;

  delay_usecs += xfer->delay_usecs;
  if (!xfer->speed_hz)
   continue;
  estimated_time += div_u64(nbits * NSEC_PER_SEC, xfer->speed_hz);
 }

 estimated_time += delay_usecs * NSEC_PER_USEC;
 if (test->elapsed_time < estimated_time) {
  dev_err(&spi->dev,
   "elapsed time %lld ns is shorter than minimum estimated time %lld ns\n",
   test->elapsed_time, estimated_time);

  return -EINVAL;
 }

 return 0;
}
