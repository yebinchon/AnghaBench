
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;
struct mpc52xx_psc_spi {scalar_t__ psc; int irq; int work; } ;


 int flush_work (int *) ;
 int free_irq (int ,struct mpc52xx_psc_spi*) ;
 int iounmap (scalar_t__) ;
 int platform_get_drvdata (struct platform_device*) ;
 struct spi_master* spi_master_get (int ) ;
 struct mpc52xx_psc_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spi_unregister_master (struct spi_master*) ;

__attribute__((used)) static int mpc52xx_psc_spi_of_remove(struct platform_device *op)
{
 struct spi_master *master = spi_master_get(platform_get_drvdata(op));
 struct mpc52xx_psc_spi *mps = spi_master_get_devdata(master);

 flush_work(&mps->work);
 spi_unregister_master(master);
 free_irq(mps->irq, mps);
 if (mps->psc)
  iounmap(mps->psc);
 spi_master_put(master);

 return 0;
}
