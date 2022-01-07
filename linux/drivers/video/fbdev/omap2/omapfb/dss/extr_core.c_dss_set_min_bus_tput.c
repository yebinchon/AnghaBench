
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct omap_dss_board_info {int (* set_min_bus_tput ) (struct device*,unsigned long) ;} ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct TYPE_4__ {struct omap_dss_board_info* platform_data; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 TYPE_3__ core ;
 int stub1 (struct device*,unsigned long) ;

int dss_set_min_bus_tput(struct device *dev, unsigned long tput)
{
 struct omap_dss_board_info *pdata = core.pdev->dev.platform_data;

 if (pdata->set_min_bus_tput)
  return pdata->set_min_bus_tput(dev, tput);
 else
  return 0;
}
