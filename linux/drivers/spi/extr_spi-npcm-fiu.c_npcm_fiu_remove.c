
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct npcm_fiu_spi {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct npcm_fiu_spi* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int npcm_fiu_remove(struct platform_device *pdev)
{
 struct npcm_fiu_spi *fiu = platform_get_drvdata(pdev);

 clk_disable_unprepare(fiu->clk);
 return 0;
}
