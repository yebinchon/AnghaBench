
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_sh_data {int irq; int ws; int master; } ;
struct platform_device {int dummy; } ;


 int flush_work (int *) ;
 int free_irq (int ,struct spi_sh_data*) ;
 struct spi_sh_data* platform_get_drvdata (struct platform_device*) ;
 int spi_unregister_master (int ) ;

__attribute__((used)) static int spi_sh_remove(struct platform_device *pdev)
{
 struct spi_sh_data *ss = platform_get_drvdata(pdev);

 spi_unregister_master(ss->master);
 flush_work(&ss->ws);
 free_irq(ss->irq, ss);

 return 0;
}
