
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int bits_per_word; scalar_t__ irq; int dev; int mode; } ;
struct rtc_device {int dev; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (struct rtc_device*) ;
 int MCP795_24_BIT ;
 int MCP795_ALM0IF_BIT ;
 int MCP795_REG_ALM0_DAY ;
 int PTR_ERR (struct rtc_device*) ;
 int SPI_MODE_0 ;
 int THIS_MODULE ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int dev_name (int *) ;
 int device_init_wakeup (int *,int) ;
 int devm_request_threaded_irq (int *,scalar_t__,int *,int ,int,int ,struct spi_device*) ;
 struct rtc_device* devm_rtc_device_register (int *,char*,int *,int ) ;
 int mcp795_irq ;
 int mcp795_rtc_ops ;
 int mcp795_rtcc_set_bits (int *,int,int ,int ) ;
 int mcp795_start_oscillator (int *,int *) ;
 int spi_set_drvdata (struct spi_device*,struct rtc_device*) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int mcp795_probe(struct spi_device *spi)
{
 struct rtc_device *rtc;
 int ret;

 spi->mode = SPI_MODE_0;
 spi->bits_per_word = 8;
 ret = spi_setup(spi);
 if (ret) {
  dev_err(&spi->dev, "Unable to setup SPI\n");
  return ret;
 }


 mcp795_start_oscillator(&spi->dev, ((void*)0));

 mcp795_rtcc_set_bits(&spi->dev, 0x03, MCP795_24_BIT, 0);

 rtc = devm_rtc_device_register(&spi->dev, "rtc-mcp795",
     &mcp795_rtc_ops, THIS_MODULE);
 if (IS_ERR(rtc))
  return PTR_ERR(rtc);

 spi_set_drvdata(spi, rtc);

 if (spi->irq > 0) {
  dev_dbg(&spi->dev, "Alarm support enabled\n");




  mcp795_rtcc_set_bits(&spi->dev, MCP795_REG_ALM0_DAY,
     MCP795_ALM0IF_BIT, 0);
  ret = devm_request_threaded_irq(&spi->dev, spi->irq, ((void*)0),
    mcp795_irq, IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
    dev_name(&rtc->dev), spi);
  if (ret)
   dev_err(&spi->dev, "Failed to request IRQ: %d: %d\n",
      spi->irq, ret);
  else
   device_init_wakeup(&spi->dev, 1);
 }
 return 0;
}
