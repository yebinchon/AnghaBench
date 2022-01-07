
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct lpc18xx_eeprom_dev {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct lpc18xx_eeprom_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int lpc18xx_eeprom_remove(struct platform_device *pdev)
{
 struct lpc18xx_eeprom_dev *eeprom = platform_get_drvdata(pdev);

 clk_disable_unprepare(eeprom->clk);

 return 0;
}
