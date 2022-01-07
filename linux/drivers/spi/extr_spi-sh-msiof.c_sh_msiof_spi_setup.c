
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_device {int mode; scalar_t__ cs_gpiod; int controller; } ;
struct sh_msiof_spi_priv {int native_cs_inited; int native_cs_high; TYPE_1__* pdev; int ctlr; } ;
struct TYPE_2__ {int dev; } ;


 int BIT (int ) ;
 int MDR1_SYNCAC_SHIFT ;
 int MDR1_SYNCMD_MASK ;
 int MDR1_SYNCMD_SPI ;
 int MDR1_TRMD ;
 int RMDR1 ;
 int SPI_CS_HIGH ;
 int TMDR1 ;
 int TMDR1_PCON ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int sh_msiof_read (struct sh_msiof_spi_priv*,int ) ;
 int sh_msiof_write (struct sh_msiof_spi_priv*,int ,int) ;
 struct sh_msiof_spi_priv* spi_controller_get_devdata (int ) ;
 scalar_t__ spi_controller_is_slave (int ) ;

__attribute__((used)) static int sh_msiof_spi_setup(struct spi_device *spi)
{
 struct sh_msiof_spi_priv *p =
  spi_controller_get_devdata(spi->controller);
 u32 clr, set, tmp;

 if (spi->cs_gpiod || spi_controller_is_slave(p->ctlr))
  return 0;

 if (p->native_cs_inited &&
     (p->native_cs_high == !!(spi->mode & SPI_CS_HIGH)))
  return 0;


 clr = MDR1_SYNCMD_MASK;
 set = MDR1_SYNCMD_SPI;
 if (spi->mode & SPI_CS_HIGH)
  clr |= BIT(MDR1_SYNCAC_SHIFT);
 else
  set |= BIT(MDR1_SYNCAC_SHIFT);
 pm_runtime_get_sync(&p->pdev->dev);
 tmp = sh_msiof_read(p, TMDR1) & ~clr;
 sh_msiof_write(p, TMDR1, tmp | set | MDR1_TRMD | TMDR1_PCON);
 tmp = sh_msiof_read(p, RMDR1) & ~clr;
 sh_msiof_write(p, RMDR1, tmp | set);
 pm_runtime_put(&p->pdev->dev);
 p->native_cs_high = spi->mode & SPI_CS_HIGH;
 p->native_cs_inited = 1;
 return 0;
}
