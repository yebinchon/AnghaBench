
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_master {scalar_t__ num_chipselect; } ;
struct mpc8xxx_spi {int max_bits_per_word; scalar_t__ native_chipselects; int set_shifts; struct fsl_spi_reg* reg_base; } ;
struct fsl_spi_reg {int slvsel; int cap; } ;
struct fsl_spi_platform_data {int cs_control; } ;
struct device {int dummy; } ;


 int SPCAP_MAXWLEN (int ) ;
 scalar_t__ SPCAP_SSEN (int ) ;
 scalar_t__ SPCAP_SSSZ (int ) ;
 struct spi_master* dev_get_drvdata (struct device*) ;
 struct fsl_spi_platform_data* dev_get_platdata (struct device*) ;
 int fsl_spi_grlib_cs_control ;
 int fsl_spi_grlib_set_shifts ;
 int mpc8xxx_spi_read_reg (int *) ;
 int mpc8xxx_spi_write_reg (int *,int) ;
 struct mpc8xxx_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static void fsl_spi_grlib_probe(struct device *dev)
{
 struct fsl_spi_platform_data *pdata = dev_get_platdata(dev);
 struct spi_master *master = dev_get_drvdata(dev);
 struct mpc8xxx_spi *mpc8xxx_spi = spi_master_get_devdata(master);
 struct fsl_spi_reg *reg_base = mpc8xxx_spi->reg_base;
 int mbits;
 u32 capabilities;

 capabilities = mpc8xxx_spi_read_reg(&reg_base->cap);

 mpc8xxx_spi->set_shifts = fsl_spi_grlib_set_shifts;
 mbits = SPCAP_MAXWLEN(capabilities);
 if (mbits)
  mpc8xxx_spi->max_bits_per_word = mbits + 1;

 mpc8xxx_spi->native_chipselects = 0;
 if (SPCAP_SSEN(capabilities)) {
  mpc8xxx_spi->native_chipselects = SPCAP_SSSZ(capabilities);
  mpc8xxx_spi_write_reg(&reg_base->slvsel, 0xffffffff);
 }
 master->num_chipselect = mpc8xxx_spi->native_chipselects;
 pdata->cs_control = fsl_spi_grlib_cs_control;
}
