
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int pullup_off () ;

__attribute__((used)) static void pxa25x_udc_shutdown(struct platform_device *_dev)
{
 pullup_off();
}
