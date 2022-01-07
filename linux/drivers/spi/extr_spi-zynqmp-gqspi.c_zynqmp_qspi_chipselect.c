
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
typedef int u32 ;
struct zynqmp_qspi {int genfifobus; int genfifocs; int dev; } ;
struct spi_device {int master; } ;


 int GQSPI_CFG_START_GEN_FIFO_MASK ;
 int GQSPI_CONFIG_OFST ;
 int GQSPI_GENFIFO_CS_HOLD ;
 int GQSPI_GENFIFO_CS_SETUP ;
 int GQSPI_GENFIFO_MODE_SPI ;
 int GQSPI_GEN_FIFO_OFST ;
 int GQSPI_ISR_GENFIFOEMPTY_MASK ;
 int GQSPI_ISR_OFST ;
 int GQSPI_ISR_TXEMPTY_MASK ;
 int cpu_relax () ;
 int dev_err (int ,char*) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 struct zynqmp_qspi* spi_master_get_devdata (int ) ;
 scalar_t__ time_after_eq (scalar_t__,scalar_t__) ;
 int zynqmp_gqspi_read (struct zynqmp_qspi*,int ) ;
 int zynqmp_gqspi_write (struct zynqmp_qspi*,int ,int) ;

__attribute__((used)) static void zynqmp_qspi_chipselect(struct spi_device *qspi, bool is_high)
{
 struct zynqmp_qspi *xqspi = spi_master_get_devdata(qspi->master);
 ulong timeout;
 u32 genfifoentry = 0x0, statusreg;

 genfifoentry |= GQSPI_GENFIFO_MODE_SPI;
 genfifoentry |= xqspi->genfifobus;

 if (!is_high) {
  genfifoentry |= xqspi->genfifocs;
  genfifoentry |= GQSPI_GENFIFO_CS_SETUP;
 } else {
  genfifoentry |= GQSPI_GENFIFO_CS_HOLD;
 }

 zynqmp_gqspi_write(xqspi, GQSPI_GEN_FIFO_OFST, genfifoentry);


 zynqmp_gqspi_write(xqspi, GQSPI_GEN_FIFO_OFST, 0x0);


 zynqmp_gqspi_write(xqspi, GQSPI_CONFIG_OFST,
   zynqmp_gqspi_read(xqspi, GQSPI_CONFIG_OFST) |
   GQSPI_CFG_START_GEN_FIFO_MASK);

 timeout = jiffies + msecs_to_jiffies(1000);


 do {
  statusreg = zynqmp_gqspi_read(xqspi, GQSPI_ISR_OFST);

  if ((statusreg & GQSPI_ISR_GENFIFOEMPTY_MASK) &&
   (statusreg & GQSPI_ISR_TXEMPTY_MASK))
   break;
  else
   cpu_relax();
 } while (!time_after_eq(jiffies, timeout));

 if (time_after_eq(jiffies, timeout))
  dev_err(xqspi->dev, "Chip select timed out\n");
}
