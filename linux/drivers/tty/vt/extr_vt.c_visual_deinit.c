
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {TYPE_1__* vc_sw; } ;
struct TYPE_2__ {int owner; int (* con_deinit ) (struct vc_data*) ;} ;


 int module_put (int ) ;
 int stub1 (struct vc_data*) ;

__attribute__((used)) static void visual_deinit(struct vc_data *vc)
{
 vc->vc_sw->con_deinit(vc);
 module_put(vc->vc_sw->owner);
}
