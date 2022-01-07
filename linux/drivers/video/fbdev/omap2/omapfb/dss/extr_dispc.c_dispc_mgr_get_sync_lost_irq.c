
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int sync_lost_irq; } ;


 TYPE_1__* mgr_desc ;

u32 dispc_mgr_get_sync_lost_irq(enum omap_channel channel)
{
 return mgr_desc[channel].sync_lost_irq;
}
