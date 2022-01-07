
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct max77686_rtc_info {int rtc_irq_data; int rtc_irq; int virq; } ;


 int free_irq (int ,struct max77686_rtc_info*) ;
 struct max77686_rtc_info* platform_get_drvdata (struct platform_device*) ;
 int regmap_del_irq_chip (int ,int ) ;

__attribute__((used)) static int max77686_rtc_remove(struct platform_device *pdev)
{
 struct max77686_rtc_info *info = platform_get_drvdata(pdev);

 free_irq(info->virq, info);
 regmap_del_irq_chip(info->rtc_irq, info->rtc_irq_data);

 return 0;
}
