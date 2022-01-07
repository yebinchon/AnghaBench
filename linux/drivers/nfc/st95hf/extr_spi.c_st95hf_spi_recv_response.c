
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st95hf_spi_context {int spi_lock; struct spi_device* spidev; } ;
struct spi_transfer {unsigned char* tx_buf; int len; unsigned char* rx_buf; int cs_change; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dev; } ;


 unsigned char ST95HF_COMMAND_RECEIVE ;
 int dev_err (int *,char*,int) ;
 int memset (struct spi_transfer*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;

int st95hf_spi_recv_response(struct st95hf_spi_context *spicontext,
        unsigned char *receivebuff)
{
 int len = 0;
 struct spi_transfer tx_takedata;
 struct spi_message m;
 struct spi_device *spidev = spicontext->spidev;
 unsigned char readdata_cmd = ST95HF_COMMAND_RECEIVE;
 struct spi_transfer t[2] = {
  {.tx_buf = &readdata_cmd, .len = 1,},
  {.rx_buf = receivebuff, .len = 2, .cs_change = 1,},
 };

 int ret = 0;

 memset(&tx_takedata, 0x0, sizeof(struct spi_transfer));

 mutex_lock(&spicontext->spi_lock);


 spi_message_init(&m);
 spi_message_add_tail(&t[0], &m);
 spi_message_add_tail(&t[1], &m);

 ret = spi_sync(spidev, &m);
 if (ret) {
  dev_err(&spidev->dev, "spi_recv_resp, data length error = %d\n",
   ret);
  mutex_unlock(&spicontext->spi_lock);
  return ret;
 }


 len = 2;


 if (receivebuff[0] & 0x60)
  len += (((receivebuff[0] & 0x60) >> 5) << 8) | receivebuff[1];
 else
  len += receivebuff[1];


 tx_takedata.rx_buf = &receivebuff[2];
 tx_takedata.len = len - 2;

 spi_message_init(&m);
 spi_message_add_tail(&tx_takedata, &m);

 ret = spi_sync(spidev, &m);

 mutex_unlock(&spicontext->spi_lock);
 if (ret) {
  dev_err(&spidev->dev, "spi_recv_resp, data read error = %d\n",
   ret);
  return ret;
 }

 return len;
}
