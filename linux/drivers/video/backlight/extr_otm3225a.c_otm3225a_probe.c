
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct spi_device {struct device dev; } ;
struct otm3225a_data {struct lcd_device* ld; struct spi_device* spi; } ;
struct lcd_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct lcd_device*) ;
 int PTR_ERR (struct lcd_device*) ;
 int dev_info (struct device*,char*) ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct otm3225a_data*) ;
 struct otm3225a_data* devm_kzalloc (struct device*,int,int ) ;
 struct lcd_device* devm_lcd_device_register (struct device*,int ,struct device*,struct otm3225a_data*,int *) ;
 int display_enable_rgb_interface ;
 int display_init ;
 int otm3225a_ops ;
 int otm3225a_write (struct spi_device*,int ,int ) ;

__attribute__((used)) static int otm3225a_probe(struct spi_device *spi)
{
 struct otm3225a_data *dd;
 struct lcd_device *ld;
 struct device *dev = &spi->dev;

 dd = devm_kzalloc(dev, sizeof(struct otm3225a_data), GFP_KERNEL);
 if (dd == ((void*)0))
  return -ENOMEM;

 ld = devm_lcd_device_register(dev, dev_name(dev), dev, dd,
          &otm3225a_ops);
 if (IS_ERR(ld))
  return PTR_ERR(ld);

 dd->spi = spi;
 dd->ld = ld;
 dev_set_drvdata(dev, dd);

 dev_info(dev, "Initializing and switching to RGB interface");
 otm3225a_write(spi, display_init, ARRAY_SIZE(display_init));
 otm3225a_write(spi, display_enable_rgb_interface,
         ARRAY_SIZE(display_enable_rgb_interface));
 return 0;
}
