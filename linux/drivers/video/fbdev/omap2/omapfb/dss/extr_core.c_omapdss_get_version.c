
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct omap_dss_board_info {int version; } ;
typedef enum omapdss_version { ____Placeholder_omapdss_version } omapdss_version ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct TYPE_4__ {struct omap_dss_board_info* platform_data; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 TYPE_3__ core ;

enum omapdss_version omapdss_get_version(void)
{
 struct omap_dss_board_info *pdata = core.pdev->dev.platform_data;
 return pdata->version;
}
