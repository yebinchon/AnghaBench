
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrst_rtc {int * dev; int * rtc; } ;
struct device {int dummy; } ;


 struct mrst_rtc* dev_get_drvdata (struct device*) ;
 int rtc_mrst_do_shutdown () ;

__attribute__((used)) static void rtc_mrst_do_remove(struct device *dev)
{
 struct mrst_rtc *mrst = dev_get_drvdata(dev);

 rtc_mrst_do_shutdown();

 mrst->rtc = ((void*)0);
 mrst->dev = ((void*)0);
}
