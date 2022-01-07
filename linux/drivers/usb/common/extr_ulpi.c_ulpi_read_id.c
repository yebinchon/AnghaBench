
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vendor; int product; } ;
struct ulpi {int dev; TYPE_1__ id; } ;


 int ULPI_PRODUCT_ID_HIGH ;
 int ULPI_PRODUCT_ID_LOW ;
 int ULPI_SCRATCH ;
 int ULPI_VENDOR_ID_HIGH ;
 int ULPI_VENDOR_ID_LOW ;
 int of_device_request_module (int *) ;
 int request_module (char*,int,int) ;
 int ulpi_read (struct ulpi*,int ) ;
 int ulpi_write (struct ulpi*,int ,int) ;

__attribute__((used)) static int ulpi_read_id(struct ulpi *ulpi)
{
 int ret;


 ret = ulpi_write(ulpi, ULPI_SCRATCH, 0xaa);
 if (ret < 0)
  goto err;

 ret = ulpi_read(ulpi, ULPI_SCRATCH);
 if (ret < 0)
  return ret;

 if (ret != 0xaa)
  goto err;

 ulpi->id.vendor = ulpi_read(ulpi, ULPI_VENDOR_ID_LOW);
 ulpi->id.vendor |= ulpi_read(ulpi, ULPI_VENDOR_ID_HIGH) << 8;

 ulpi->id.product = ulpi_read(ulpi, ULPI_PRODUCT_ID_LOW);
 ulpi->id.product |= ulpi_read(ulpi, ULPI_PRODUCT_ID_HIGH) << 8;


 if (ulpi->id.vendor == 0)
  goto err;

 request_module("ulpi:v%04xp%04x", ulpi->id.vendor, ulpi->id.product);
 return 0;
err:
 of_device_request_module(&ulpi->dev);
 return 0;
}
