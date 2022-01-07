
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int value ;
typedef int u8 ;
struct spi_device {int bits_per_word; int max_speed_hz; int mode; int dev; scalar_t__ irq; } ;
struct nvmem_config {char* name; int word_size; int stride; struct ds1305* priv; int reg_write; int reg_read; int size; } ;
struct ds1305_platform_data {int trickle; scalar_t__ en_1hz; scalar_t__ is_ds1306; } ;
struct ds1305 {int* ctrl; int hr12; TYPE_1__* rtc; int work; struct spi_device* spi; } ;
typedef int buf ;
typedef int addr ;
struct TYPE_6__ {int nvram_old_abi; int dev; int * ops; } ;


 int DS1305_CONTROL ;
 int DS1305_HOUR ;
 int DS1305_HR_12 ;
 int DS1305_NVRAM_LEN ;
 int DS1305_TRICKLE_MAGIC ;
 int DS1305_WP ;
 int DS1305_WRITE ;
 int DS1305_nEOSC ;
 int DS1306_1HZ ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int SPI_CPHA ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,scalar_t__,int) ;
 struct ds1305_platform_data* dev_get_platdata (int *) ;
 int dev_name (int *) ;
 int dev_warn (int *,char*) ;
 int device_set_wakeup_capable (int *,int) ;
 struct ds1305* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,scalar_t__,int ,int ,int ,struct ds1305*) ;
 TYPE_1__* devm_rtc_allocate_device (int *) ;
 int ds1305_irq ;
 int ds1305_nvram_read ;
 int ds1305_nvram_write ;
 int ds1305_ops ;
 int ds1305_work ;
 int rtc_nvmem_register (TYPE_1__*,struct nvmem_config*) ;
 int rtc_register_device (TYPE_1__*) ;
 int spi_set_drvdata (struct spi_device*,struct ds1305*) ;
 int spi_write_then_read (struct spi_device*,int*,int,int*,int) ;

__attribute__((used)) static int ds1305_probe(struct spi_device *spi)
{
 struct ds1305 *ds1305;
 int status;
 u8 addr, value;
 struct ds1305_platform_data *pdata = dev_get_platdata(&spi->dev);
 bool write_ctrl = 0;
 struct nvmem_config ds1305_nvmem_cfg = {
  .name = "ds1305_nvram",
  .word_size = 1,
  .stride = 1,
  .size = DS1305_NVRAM_LEN,
  .reg_read = ds1305_nvram_read,
  .reg_write = ds1305_nvram_write,
 };





 if ((spi->bits_per_word && spi->bits_per_word != 8)
   || (spi->max_speed_hz > 2000000)
   || !(spi->mode & SPI_CPHA))
  return -EINVAL;


 ds1305 = devm_kzalloc(&spi->dev, sizeof(*ds1305), GFP_KERNEL);
 if (!ds1305)
  return -ENOMEM;
 ds1305->spi = spi;
 spi_set_drvdata(spi, ds1305);


 addr = DS1305_CONTROL;
 status = spi_write_then_read(spi, &addr, sizeof(addr),
   ds1305->ctrl, sizeof(ds1305->ctrl));
 if (status < 0) {
  dev_dbg(&spi->dev, "can't %s, %d\n",
    "read", status);
  return status;
 }

 dev_dbg(&spi->dev, "ctrl %s: %3ph\n", "read", ds1305->ctrl);






 if ((ds1305->ctrl[0] & 0x38) != 0 || (ds1305->ctrl[1] & 0xfc) != 0) {
  dev_dbg(&spi->dev, "RTC chip is not present\n");
  return -ENODEV;
 }
 if (ds1305->ctrl[2] == 0)
  dev_dbg(&spi->dev, "chip may not be present\n");




 if (ds1305->ctrl[0] & DS1305_WP) {
  u8 buf[2];

  ds1305->ctrl[0] &= ~DS1305_WP;

  buf[0] = DS1305_WRITE | DS1305_CONTROL;
  buf[1] = ds1305->ctrl[0];
  status = spi_write_then_read(spi, buf, sizeof(buf), ((void*)0), 0);

  dev_dbg(&spi->dev, "clear WP --> %d\n", status);
  if (status < 0)
   return status;
 }




 if (ds1305->ctrl[0] & DS1305_nEOSC) {
  ds1305->ctrl[0] &= ~DS1305_nEOSC;
  write_ctrl = 1;
  dev_warn(&spi->dev, "SET TIME!\n");
 }


 if (ds1305->ctrl[1]) {
  ds1305->ctrl[1] = 0;
  write_ctrl = 1;
 }


 if (pdata) {

  if (((ds1305->ctrl[2] & 0xf0) != DS1305_TRICKLE_MAGIC)) {
   ds1305->ctrl[2] = DS1305_TRICKLE_MAGIC
      | pdata->trickle;
   write_ctrl = 1;
  }


  if (pdata->is_ds1306) {
   if (pdata->en_1hz) {
    if (!(ds1305->ctrl[0] & DS1306_1HZ)) {
     ds1305->ctrl[0] |= DS1306_1HZ;
     write_ctrl = 1;
    }
   } else {
    if (ds1305->ctrl[0] & DS1306_1HZ) {
     ds1305->ctrl[0] &= ~DS1306_1HZ;
     write_ctrl = 1;
    }
   }
  }
 }

 if (write_ctrl) {
  u8 buf[4];

  buf[0] = DS1305_WRITE | DS1305_CONTROL;
  buf[1] = ds1305->ctrl[0];
  buf[2] = ds1305->ctrl[1];
  buf[3] = ds1305->ctrl[2];
  status = spi_write_then_read(spi, buf, sizeof(buf), ((void*)0), 0);
  if (status < 0) {
   dev_dbg(&spi->dev, "can't %s, %d\n",
     "write", status);
   return status;
  }

  dev_dbg(&spi->dev, "ctrl %s: %3ph\n", "write", ds1305->ctrl);
 }


 addr = DS1305_HOUR;
 status = spi_write_then_read(spi, &addr, sizeof(addr),
    &value, sizeof(value));
 if (status < 0) {
  dev_dbg(&spi->dev, "read HOUR --> %d\n", status);
  return status;
 }

 ds1305->hr12 = (DS1305_HR_12 & value) != 0;
 if (ds1305->hr12)
  dev_dbg(&spi->dev, "AM/PM\n");


 ds1305->rtc = devm_rtc_allocate_device(&spi->dev);
 if (IS_ERR(ds1305->rtc))
  return PTR_ERR(ds1305->rtc);

 ds1305->rtc->ops = &ds1305_ops;

 ds1305_nvmem_cfg.priv = ds1305;
 ds1305->rtc->nvram_old_abi = 1;
 status = rtc_register_device(ds1305->rtc);
 if (status)
  return status;

 rtc_nvmem_register(ds1305->rtc, &ds1305_nvmem_cfg);







 if (spi->irq) {
  INIT_WORK(&ds1305->work, ds1305_work);
  status = devm_request_irq(&spi->dev, spi->irq, ds1305_irq,
    0, dev_name(&ds1305->rtc->dev), ds1305);
  if (status < 0) {
   dev_err(&spi->dev, "request_irq %d --> %d\n",
     spi->irq, status);
  } else {
   device_set_wakeup_capable(&spi->dev, 1);
  }
 }

 return 0;
}
