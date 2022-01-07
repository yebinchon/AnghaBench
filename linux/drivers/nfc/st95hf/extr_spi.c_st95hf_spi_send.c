
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st95hf_spi_context {int req_issync; int spi_lock; int done; struct spi_device* spidev; } ;
struct spi_transfer {unsigned char* tx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dev; } ;
typedef enum req_type { ____Placeholder_req_type } req_type ;


 int ASYNC ;
 int ETIMEDOUT ;
 int SYNC ;
 int dev_err (int *,char*,...) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;
 int wait_for_completion_timeout (int *,int ) ;

int st95hf_spi_send(struct st95hf_spi_context *spicontext,
      unsigned char *buffertx,
      int datalen,
      enum req_type reqtype)
{
 struct spi_message m;
 int result = 0;
 struct spi_device *spidev = spicontext->spidev;
 struct spi_transfer tx_transfer = {
  .tx_buf = buffertx,
  .len = datalen,
 };

 mutex_lock(&spicontext->spi_lock);

 if (reqtype == SYNC) {
  spicontext->req_issync = 1;
  reinit_completion(&spicontext->done);
 } else {
  spicontext->req_issync = 0;
 }

 spi_message_init(&m);
 spi_message_add_tail(&tx_transfer, &m);

 result = spi_sync(spidev, &m);
 if (result) {
  dev_err(&spidev->dev, "error: sending cmd to st95hf using SPI = %d\n",
   result);
  mutex_unlock(&spicontext->spi_lock);
  return result;
 }


 if (reqtype == ASYNC) {
  mutex_unlock(&spicontext->spi_lock);
  return 0;
 }

 result = wait_for_completion_timeout(&spicontext->done,
          msecs_to_jiffies(1000));

 if (!result) {
  dev_err(&spidev->dev, "error: response not ready timeout\n");
  result = -ETIMEDOUT;
 } else {
  result = 0;
 }

 mutex_unlock(&spicontext->spi_lock);

 return result;
}
