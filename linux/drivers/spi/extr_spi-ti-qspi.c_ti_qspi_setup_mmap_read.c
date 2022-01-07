
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ti_qspi {int dummy; } ;
struct spi_device {int chip_select; int master; } ;


 int QSPI_SETUP_ADDR_SHIFT ;
 int QSPI_SETUP_DUMMY_SHIFT ;
 int QSPI_SETUP_RD_DUAL ;
 int QSPI_SETUP_RD_NORMAL ;
 int QSPI_SETUP_RD_QUAD ;
 int QSPI_SPI_SETUP_REG (int ) ;


 struct ti_qspi* spi_master_get_devdata (int ) ;
 int ti_qspi_write (struct ti_qspi*,int,int ) ;

__attribute__((used)) static void ti_qspi_setup_mmap_read(struct spi_device *spi, u8 opcode,
        u8 data_nbits, u8 addr_width,
        u8 dummy_bytes)
{
 struct ti_qspi *qspi = spi_master_get_devdata(spi->master);
 u32 memval = opcode;

 switch (data_nbits) {
 case 128:
  memval |= QSPI_SETUP_RD_QUAD;
  break;
 case 129:
  memval |= QSPI_SETUP_RD_DUAL;
  break;
 default:
  memval |= QSPI_SETUP_RD_NORMAL;
  break;
 }
 memval |= ((addr_width - 1) << QSPI_SETUP_ADDR_SHIFT |
     dummy_bytes << QSPI_SETUP_DUMMY_SHIFT);
 ti_qspi_write(qspi, memval,
        QSPI_SPI_SETUP_REG(spi->chip_select));
}
