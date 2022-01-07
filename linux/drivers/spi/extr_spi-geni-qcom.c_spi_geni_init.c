
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct geni_se {int dummy; } ;
struct spi_geni_master {int tx_wm; int oversampling; int dev; scalar_t__ tx_fifo_depth; int fifo_width_bits; struct geni_se se; } ;


 int ENXIO ;
 unsigned int GENI_SE_SPI ;
 unsigned int GENI_SE_VERSION_MAJOR (unsigned int) ;
 unsigned int GENI_SE_VERSION_MINOR (unsigned int) ;
 int dev_err (int ,char*,unsigned int) ;
 unsigned int geni_se_get_qup_hw_version (struct geni_se*) ;
 scalar_t__ geni_se_get_tx_fifo_depth (struct geni_se*) ;
 int geni_se_get_tx_fifo_width (struct geni_se*) ;
 int geni_se_init (struct geni_se*,int,scalar_t__) ;
 unsigned int geni_se_read_proto (struct geni_se*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static int spi_geni_init(struct spi_geni_master *mas)
{
 struct geni_se *se = &mas->se;
 unsigned int proto, major, minor, ver;

 pm_runtime_get_sync(mas->dev);

 proto = geni_se_read_proto(se);
 if (proto != GENI_SE_SPI) {
  dev_err(mas->dev, "Invalid proto %d\n", proto);
  pm_runtime_put(mas->dev);
  return -ENXIO;
 }
 mas->tx_fifo_depth = geni_se_get_tx_fifo_depth(se);


 mas->fifo_width_bits = geni_se_get_tx_fifo_width(se);





 geni_se_init(se, 0x0, mas->tx_fifo_depth - 2);

 mas->tx_wm = 1;
 ver = geni_se_get_qup_hw_version(se);
 major = GENI_SE_VERSION_MAJOR(ver);
 minor = GENI_SE_VERSION_MINOR(ver);

 if (major == 1 && minor == 0)
  mas->oversampling = 2;
 else
  mas->oversampling = 1;

 pm_runtime_put(mas->dev);
 return 0;
}
