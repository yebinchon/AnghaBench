
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int mt7621_wdt_dev ;
 int mt7621_wdt_stop (int *) ;

__attribute__((used)) static void mt7621_wdt_shutdown(struct platform_device *pdev)
{
 mt7621_wdt_stop(&mt7621_wdt_dev);
}
