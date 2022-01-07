
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsc_drv {int dummy; } ;


 int RSC_DRV_CONTROL ;
 int TCS_AMC_MODE_ENABLE ;
 int TCS_AMC_MODE_TRIGGER ;
 int read_tcs_reg (struct rsc_drv*,int ,int,int ) ;
 int write_tcs_reg_sync (struct rsc_drv*,int ,int,int ) ;

__attribute__((used)) static void __tcs_trigger(struct rsc_drv *drv, int tcs_id)
{
 u32 enable;






 enable = read_tcs_reg(drv, RSC_DRV_CONTROL, tcs_id, 0);
 enable &= ~TCS_AMC_MODE_TRIGGER;
 write_tcs_reg_sync(drv, RSC_DRV_CONTROL, tcs_id, enable);
 enable &= ~TCS_AMC_MODE_ENABLE;
 write_tcs_reg_sync(drv, RSC_DRV_CONTROL, tcs_id, enable);


 enable = TCS_AMC_MODE_ENABLE;
 write_tcs_reg_sync(drv, RSC_DRV_CONTROL, tcs_id, enable);
 enable |= TCS_AMC_MODE_TRIGGER;
 write_tcs_reg_sync(drv, RSC_DRV_CONTROL, tcs_id, enable);
}
