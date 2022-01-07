
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct omap_dss_board_info {int (* dsi_enable_pads ) (int,unsigned int) ;} ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct TYPE_4__ {struct omap_dss_board_info* platform_data; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int ENOENT ;
 TYPE_3__ core ;
 int stub1 (int,unsigned int) ;

int dss_dsi_enable_pads(int dsi_id, unsigned lane_mask)
{
 struct omap_dss_board_info *board_data = core.pdev->dev.platform_data;

 if (!board_data->dsi_enable_pads)
  return -ENOENT;

 return board_data->dsi_enable_pads(dsi_id, lane_mask);
}
