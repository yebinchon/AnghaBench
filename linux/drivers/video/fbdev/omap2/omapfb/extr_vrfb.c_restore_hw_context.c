
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int physical_ba; int size; int control; } ;


 TYPE_1__* ctxs ;
 int omap2_sms_write_rot_control (int ,int) ;
 int omap2_sms_write_rot_physical_ba (int ,int) ;
 int omap2_sms_write_rot_size (int ,int) ;

__attribute__((used)) static inline void restore_hw_context(int ctx)
{
 omap2_sms_write_rot_control(ctxs[ctx].control, ctx);
 omap2_sms_write_rot_size(ctxs[ctx].size, ctx);
 omap2_sms_write_rot_physical_ba(ctxs[ctx].physical_ba, ctx);
}
