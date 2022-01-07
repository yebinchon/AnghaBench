
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {TYPE_1__* vc_sw; } ;
struct TYPE_2__ {int (* con_save_screen ) (struct vc_data*) ;} ;


 int WARN_CONSOLE_UNLOCKED () ;
 int stub1 (struct vc_data*) ;

__attribute__((used)) static void save_screen(struct vc_data *vc)
{
 WARN_CONSOLE_UNLOCKED();

 if (vc->vc_sw->con_save_screen)
  vc->vc_sw->con_save_screen(vc);
}
