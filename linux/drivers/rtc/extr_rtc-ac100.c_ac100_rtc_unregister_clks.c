
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ac100_rtc_dev {TYPE_2__* rtc_32k_clk; TYPE_1__* dev; } ;
struct TYPE_4__ {int clk; } ;
struct TYPE_3__ {int of_node; } ;


 int clk_unregister_fixed_rate (int ) ;
 int of_clk_del_provider (int ) ;

__attribute__((used)) static void ac100_rtc_unregister_clks(struct ac100_rtc_dev *chip)
{
 of_clk_del_provider(chip->dev->of_node);
 clk_unregister_fixed_rate(chip->rtc_32k_clk->clk);
}
