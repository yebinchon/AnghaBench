
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {TYPE_1__* vc_sw; } ;
struct TYPE_2__ {int (* con_switch ) (struct vc_data*) ;int (* con_flush_scrollback ) (struct vc_data*) ;} ;


 int WARN_CONSOLE_UNLOCKED () ;
 int set_origin (struct vc_data*) ;
 int stub1 (struct vc_data*) ;
 int stub2 (struct vc_data*) ;

__attribute__((used)) static void flush_scrollback(struct vc_data *vc)
{
 WARN_CONSOLE_UNLOCKED();

 set_origin(vc);
 if (vc->vc_sw->con_flush_scrollback)
  vc->vc_sw->con_flush_scrollback(vc);
 else
  vc->vc_sw->con_switch(vc);
}
