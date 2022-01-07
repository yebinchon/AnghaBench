
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pic32_sqi {int sys_clk; int base_clk; int irq; } ;


 int clk_disable_unprepare (int ) ;
 int free_irq (int ,struct pic32_sqi*) ;
 struct pic32_sqi* platform_get_drvdata (struct platform_device*) ;
 int ring_desc_ring_free (struct pic32_sqi*) ;

__attribute__((used)) static int pic32_sqi_remove(struct platform_device *pdev)
{
 struct pic32_sqi *sqi = platform_get_drvdata(pdev);


 free_irq(sqi->irq, sqi);
 ring_desc_ring_free(sqi);


 clk_disable_unprepare(sqi->base_clk);
 clk_disable_unprepare(sqi->sys_clk);

 return 0;
}
