
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 struct vc_data* mda_display_fg ;

__attribute__((used)) static void mdacon_deinit(struct vc_data *c)
{


 if (mda_display_fg == c)
  mda_display_fg = ((void*)0);
}
