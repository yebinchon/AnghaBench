
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct uniphier_wdt_dev {int regmap; } ;


 int WDTCTRL ;
 int WDTCTRL_CLEAR ;
 unsigned int WDTCTRL_STATUS ;
 int WDTST_TIMEOUT ;
 int regmap_read_poll_timeout (int ,int ,unsigned int,unsigned int,int ,int ) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 struct uniphier_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int uniphier_watchdog_ping(struct watchdog_device *w)
{
 struct uniphier_wdt_dev *wdev = watchdog_get_drvdata(w);
 unsigned int val;
 int ret;


 ret = regmap_write_bits(wdev->regmap, WDTCTRL,
    WDTCTRL_CLEAR, WDTCTRL_CLEAR);
 if (!ret)




  ret = regmap_read_poll_timeout(wdev->regmap, WDTCTRL, val,
            (val & WDTCTRL_STATUS),
            0, WDTST_TIMEOUT);

 return ret;
}
