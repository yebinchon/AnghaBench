
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct radeonfb_info {int pending_lvds_gen_cntl; } ;


 int LVDS_GEN_CNTL ;
 int OUTREG (int ,int ) ;
 struct radeonfb_info* from_timer (int ,struct timer_list*,int ) ;
 int lvds_timer ;
 int radeon_engine_idle () ;
 struct radeonfb_info* rinfo ;

__attribute__((used)) static void radeon_lvds_timer_func(struct timer_list *t)
{
 struct radeonfb_info *rinfo = from_timer(rinfo, t, lvds_timer);

 radeon_engine_idle();

 OUTREG(LVDS_GEN_CNTL, rinfo->pending_lvds_gen_cntl);
}
