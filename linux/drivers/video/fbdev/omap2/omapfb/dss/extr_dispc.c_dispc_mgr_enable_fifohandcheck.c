
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int DISPC_MGR_FLD_FIFOHANDCHECK ;
 int mgr_fld_write (int,int ,int) ;

__attribute__((used)) static void dispc_mgr_enable_fifohandcheck(enum omap_channel channel, bool enable)
{
 mgr_fld_write(channel, DISPC_MGR_FLD_FIFOHANDCHECK, enable);
}
