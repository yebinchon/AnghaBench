
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {scalar_t__ frame_length; scalar_t__ actual_length; } ;
struct spi_test {int elapsed_time; struct spi_message msg; } ;
struct spi_device {int dev; } ;
typedef int ktime_t ;


 int EIO ;
 int ETIMEDOUT ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int dump_messages ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;
 int schedule () ;
 int simulate_only ;
 int spi_sync (struct spi_device*,struct spi_message*) ;
 int spi_test_check_elapsed_time (struct spi_device*,struct spi_test*) ;
 int spi_test_check_loopback_result (struct spi_device*,struct spi_message*,void*,void*) ;
 int spi_test_dump_message (struct spi_device*,struct spi_message*,int) ;

int spi_test_execute_msg(struct spi_device *spi, struct spi_test *test,
    void *tx, void *rx)
{
 struct spi_message *msg = &test->msg;
 int ret = 0;
 int i;


 if (!simulate_only) {
  ktime_t start;


  if (dump_messages == 3)
   spi_test_dump_message(spi, msg, 1);

  start = ktime_get();

  ret = spi_sync(spi, msg);
  test->elapsed_time = ktime_to_ns(ktime_sub(ktime_get(), start));
  if (ret == -ETIMEDOUT) {
   dev_info(&spi->dev,
     "spi-message timed out - rerunning...\n");

   for (i = 0; i < 16; i++)
    schedule();
   ret = spi_sync(spi, msg);
  }
  if (ret) {
   dev_err(&spi->dev,
    "Failed to execute spi_message: %i\n",
    ret);
   goto exit;
  }


  if (msg->frame_length != msg->actual_length) {
   dev_err(&spi->dev,
    "actual length differs from expected\n");
   ret = -EIO;
   goto exit;
  }


  ret = spi_test_check_loopback_result(spi, msg, tx, rx);
  if (ret)
   goto exit;

  ret = spi_test_check_elapsed_time(spi, test);
 }


exit:
 if (dump_messages || ret)
  spi_test_dump_message(spi, msg,
          (dump_messages >= 2) || (ret));

 return ret;
}
