
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;
struct mpc52xx_spi {int gpio_cs_count; int regs; int * gpio_cs; int irq1; int irq0; } ;


 int free_irq (int ,struct mpc52xx_spi*) ;
 int gpio_free (int ) ;
 int iounmap (int ) ;
 int kfree (int *) ;
 int platform_get_drvdata (struct platform_device*) ;
 struct spi_master* spi_master_get (int ) ;
 struct mpc52xx_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spi_unregister_master (struct spi_master*) ;

__attribute__((used)) static int mpc52xx_spi_remove(struct platform_device *op)
{
 struct spi_master *master = spi_master_get(platform_get_drvdata(op));
 struct mpc52xx_spi *ms = spi_master_get_devdata(master);
 int i;

 free_irq(ms->irq0, ms);
 free_irq(ms->irq1, ms);

 for (i = 0; i < ms->gpio_cs_count; i++)
  gpio_free(ms->gpio_cs[i]);

 kfree(ms->gpio_cs);
 spi_unregister_master(master);
 iounmap(ms->regs);
 spi_master_put(master);

 return 0;
}
