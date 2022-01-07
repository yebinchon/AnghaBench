
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DISPC_MGR_FLD_ENABLE ;
 int mgr_fld_read (int,int ) ;

bool dispc_mgr_is_enabled(enum omap_channel channel)
{
 return !!mgr_fld_read(channel, DISPC_MGR_FLD_ENABLE);
}
