
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsc_drv {scalar_t__ tcs_base; } ;


 int RSC_DRV_CMD_OFFSET ;
 int RSC_DRV_TCS_OFFSET ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void write_tcs_cmd(struct rsc_drv *drv, int reg, int tcs_id, int cmd_id,
     u32 data)
{
 writel_relaxed(data, drv->tcs_base + reg + RSC_DRV_TCS_OFFSET * tcs_id +
         RSC_DRV_CMD_OFFSET * cmd_id);
}
