
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ulpi {int dev; } ;
struct tusb1210 {int vendor_specific2; void* phy; struct ulpi* ulpi; void* gpio_cs; void* gpio_reset; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int TUSB1210_VENDOR_SPECIFIC2 ;
 int TUSB1210_VENDOR_SPECIFIC2_DP_SHIFT ;
 int TUSB1210_VENDOR_SPECIFIC2_IHSTX_SHIFT ;
 int TUSB1210_VENDOR_SPECIFIC2_ZHSDRV_SHIFT ;
 int device_property_read_u8 (int *,char*,int*) ;
 void* devm_gpiod_get_optional (int *,char*,int ) ;
 struct tusb1210* devm_kzalloc (int *,int,int ) ;
 int gpiod_set_value_cansleep (void*,int) ;
 int phy_ops ;
 int phy_set_drvdata (void*,struct tusb1210*) ;
 void* ulpi_phy_create (struct ulpi*,int *) ;
 int ulpi_set_drvdata (struct ulpi*,struct tusb1210*) ;
 int ulpi_write (struct ulpi*,int ,int) ;

__attribute__((used)) static int tusb1210_probe(struct ulpi *ulpi)
{
 struct tusb1210 *tusb;
 u8 val, reg;

 tusb = devm_kzalloc(&ulpi->dev, sizeof(*tusb), GFP_KERNEL);
 if (!tusb)
  return -ENOMEM;

 tusb->gpio_reset = devm_gpiod_get_optional(&ulpi->dev, "reset",
         GPIOD_OUT_LOW);
 if (IS_ERR(tusb->gpio_reset))
  return PTR_ERR(tusb->gpio_reset);

 gpiod_set_value_cansleep(tusb->gpio_reset, 1);

 tusb->gpio_cs = devm_gpiod_get_optional(&ulpi->dev, "cs",
      GPIOD_OUT_LOW);
 if (IS_ERR(tusb->gpio_cs))
  return PTR_ERR(tusb->gpio_cs);

 gpiod_set_value_cansleep(tusb->gpio_cs, 1);







 device_property_read_u8(&ulpi->dev, "ihstx", &val);
 reg = val << TUSB1210_VENDOR_SPECIFIC2_IHSTX_SHIFT;


 device_property_read_u8(&ulpi->dev, "zhsdrv", &val);
 reg |= val << TUSB1210_VENDOR_SPECIFIC2_ZHSDRV_SHIFT;


 device_property_read_u8(&ulpi->dev, "datapolarity", &val);
 reg |= val << TUSB1210_VENDOR_SPECIFIC2_DP_SHIFT;

 if (reg) {
  ulpi_write(ulpi, TUSB1210_VENDOR_SPECIFIC2, reg);
  tusb->vendor_specific2 = reg;
 }

 tusb->phy = ulpi_phy_create(ulpi, &phy_ops);
 if (IS_ERR(tusb->phy))
  return PTR_ERR(tusb->phy);

 tusb->ulpi = ulpi;

 phy_set_drvdata(tusb->phy, tusb);
 ulpi_set_drvdata(ulpi, tusb);
 return 0;
}
