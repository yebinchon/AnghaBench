
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mvebu_mpp_mode {struct mvebu_mpp_ctrl_setting* settings; } ;
struct mvebu_mpp_ctrl_setting {int variant; scalar_t__ name; } ;



__attribute__((used)) static void mvebu_pinctrl_assign_variant(struct mvebu_mpp_mode *m,
      u8 variant)
{
 struct mvebu_mpp_ctrl_setting *s;

 for (s = m->settings ; s->name ; s++)
  s->variant = variant;
}
