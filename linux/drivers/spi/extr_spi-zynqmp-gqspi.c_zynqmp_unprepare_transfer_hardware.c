
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_qspi {int dummy; } ;
struct spi_master {int dummy; } ;


 int GQSPI_EN_OFST ;
 struct zynqmp_qspi* spi_master_get_devdata (struct spi_master*) ;
 int zynqmp_gqspi_write (struct zynqmp_qspi*,int ,int) ;

__attribute__((used)) static int zynqmp_unprepare_transfer_hardware(struct spi_master *master)
{
 struct zynqmp_qspi *xqspi = spi_master_get_devdata(master);

 zynqmp_gqspi_write(xqspi, GQSPI_EN_OFST, 0x0);
 return 0;
}
