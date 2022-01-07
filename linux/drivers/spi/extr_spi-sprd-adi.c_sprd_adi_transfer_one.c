
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sprd_adi {int dev; scalar_t__ slave_pbase; } ;
struct spi_transfer {scalar_t__ tx_buf; scalar_t__ rx_buf; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 struct sprd_adi* spi_controller_get_devdata (struct spi_controller*) ;
 int sprd_adi_check_paddr (struct sprd_adi*,scalar_t__) ;
 int sprd_adi_read (struct sprd_adi*,scalar_t__,scalar_t__*) ;
 int sprd_adi_write (struct sprd_adi*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int sprd_adi_transfer_one(struct spi_controller *ctlr,
     struct spi_device *spi_dev,
     struct spi_transfer *t)
{
 struct sprd_adi *sadi = spi_controller_get_devdata(ctlr);
 u32 phy_reg, val;
 int ret;

 if (t->rx_buf) {
  phy_reg = *(u32 *)t->rx_buf + sadi->slave_pbase;

  ret = sprd_adi_check_paddr(sadi, phy_reg);
  if (ret)
   return ret;

  ret = sprd_adi_read(sadi, phy_reg, &val);
  if (ret)
   return ret;

  *(u32 *)t->rx_buf = val;
 } else if (t->tx_buf) {
  u32 *p = (u32 *)t->tx_buf;






  phy_reg = *p++ + sadi->slave_pbase;
  ret = sprd_adi_check_paddr(sadi, phy_reg);
  if (ret)
   return ret;

  val = *p;
  ret = sprd_adi_write(sadi, phy_reg, val);
  if (ret)
   return ret;
 } else {
  dev_err(sadi->dev, "no buffer for transfer\n");
  return -EINVAL;
 }

 return 0;
}
