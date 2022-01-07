
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_6__ {TYPE_1__* feat; } ;
struct TYPE_5__ {int framedone_irq; } ;
struct TYPE_4__ {scalar_t__ no_framedone_tv; } ;


 int OMAP_DSS_CHANNEL_DIGIT ;
 TYPE_3__ dispc ;
 TYPE_2__* mgr_desc ;

u32 dispc_mgr_get_framedone_irq(enum omap_channel channel)
{
 if (channel == OMAP_DSS_CHANNEL_DIGIT && dispc.feat->no_framedone_tv)
  return 0;

 return mgr_desc[channel].framedone_irq;
}
