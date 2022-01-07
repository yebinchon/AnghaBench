
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int name; } ;


 int DISPC_MGR_FLD_GO ;
 int DSSDBG (char*,int ) ;
 int WARN_ON (int) ;
 int dispc_mgr_go_busy (int) ;
 int dispc_mgr_is_enabled (int) ;
 TYPE_1__* mgr_desc ;
 int mgr_fld_write (int,int ,int) ;

void dispc_mgr_go(enum omap_channel channel)
{
 WARN_ON(!dispc_mgr_is_enabled(channel));
 WARN_ON(dispc_mgr_go_busy(channel));

 DSSDBG("GO %s\n", mgr_desc[channel].name);

 mgr_fld_write(channel, DISPC_MGR_FLD_GO, 1);
}
