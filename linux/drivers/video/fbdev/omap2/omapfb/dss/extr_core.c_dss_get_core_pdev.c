
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {struct platform_device* pdev; } ;


 TYPE_1__ core ;

struct platform_device *dss_get_core_pdev(void)
{
 return core.pdev;
}
