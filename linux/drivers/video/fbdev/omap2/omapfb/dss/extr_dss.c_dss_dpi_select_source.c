
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_4__ {TYPE_1__* feat; } ;
struct TYPE_3__ {int (* dpi_select_source ) (int,int) ;} ;


 TYPE_2__ dss ;
 int stub1 (int,int) ;

int dss_dpi_select_source(int port, enum omap_channel channel)
{
 return dss.feat->dpi_select_source(port, channel);
}
