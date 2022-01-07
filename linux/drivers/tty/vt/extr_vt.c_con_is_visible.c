
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {struct vc_data const** vc_display_fg; } ;


 int WARN_CONSOLE_UNLOCKED () ;

bool con_is_visible(const struct vc_data *vc)
{
 WARN_CONSOLE_UNLOCKED();

 return *vc->vc_display_fg == vc;
}
