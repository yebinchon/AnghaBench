
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx2_wdt_device {int regmap; } ;


 int IMX2_WDT_WCR ;
 int IMX2_WDT_WCR_WDE ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static inline bool imx2_wdt_is_running(struct imx2_wdt_device *wdev)
{
 u32 val;

 regmap_read(wdev->regmap, IMX2_WDT_WCR, &val);

 return val & IMX2_WDT_WCR_WDE;
}
