
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1704_charger {int dev; int model; } ;


 int ARRAY_SIZE (int*) ;
 int ENODEV ;
 int NXP_VENDOR_ID ;
 int ULPI_PRODUCT_ID_HIGH ;
 int ULPI_PRODUCT_ID_LOW ;
 int ULPI_SCRATCH ;
 int ULPI_VENDOR_ID_HIGH ;
 int ULPI_VENDOR_ID_LOW ;
 int dev_err (int ,char*,int) ;
 int isp1704_read (struct isp1704_charger*,int ) ;
 int isp1704_write (struct isp1704_charger*,int ,int) ;
 int* isp170x_id ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static inline int isp1704_test_ulpi(struct isp1704_charger *isp)
{
 int vendor;
 int product;
 int i;
 int ret;


 ret = isp1704_write(isp, ULPI_SCRATCH, 0xaa);
 if (ret < 0)
  return ret;

 ret = isp1704_read(isp, ULPI_SCRATCH);
 if (ret < 0)
  return ret;

 if (ret != 0xaa)
  return -ENODEV;


 vendor = isp1704_read(isp, ULPI_VENDOR_ID_LOW);
 vendor |= isp1704_read(isp, ULPI_VENDOR_ID_HIGH) << 8;
 if (vendor != NXP_VENDOR_ID)
  return -ENODEV;

 product = isp1704_read(isp, ULPI_PRODUCT_ID_LOW);
 product |= isp1704_read(isp, ULPI_PRODUCT_ID_HIGH) << 8;

 for (i = 0; i < ARRAY_SIZE(isp170x_id); i++) {
  if (product == isp170x_id[i]) {
   sprintf(isp->model, "isp%x", product);
   return product;
  }
 }

 dev_err(isp->dev, "product id %x not matching known ids", product);

 return -ENODEV;
}
