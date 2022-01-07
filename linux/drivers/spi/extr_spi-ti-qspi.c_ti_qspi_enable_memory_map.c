
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_qspi {int mmap_enabled; int ctrl_reg; scalar_t__ ctrl_base; } ;
struct spi_device {int chip_select; int master; } ;


 int MEM_CS_EN (int ) ;
 int MEM_CS_MASK ;
 int MM_SWITCH ;
 int QSPI_SPI_SWITCH_REG ;
 int regmap_update_bits (scalar_t__,int ,int ,int ) ;
 struct ti_qspi* spi_master_get_devdata (int ) ;
 int ti_qspi_write (struct ti_qspi*,int ,int ) ;

__attribute__((used)) static void ti_qspi_enable_memory_map(struct spi_device *spi)
{
 struct ti_qspi *qspi = spi_master_get_devdata(spi->master);

 ti_qspi_write(qspi, MM_SWITCH, QSPI_SPI_SWITCH_REG);
 if (qspi->ctrl_base) {
  regmap_update_bits(qspi->ctrl_base, qspi->ctrl_reg,
       MEM_CS_MASK,
       MEM_CS_EN(spi->chip_select));
 }
 qspi->mmap_enabled = 1;
}
