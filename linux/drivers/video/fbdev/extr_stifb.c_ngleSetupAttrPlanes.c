
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int yres; int xres; } ;
struct TYPE_4__ {TYPE_1__ var; } ;
struct stifb_info {TYPE_2__ info; } ;


 int FINISH_ATTR_ACCESS (struct stifb_info*) ;
 int SETUP_ATTR_ACCESS (struct stifb_info*,int) ;
 int SETUP_FB (struct stifb_info*) ;
 int SET_ATTR_SIZE (struct stifb_info*,int ,int ) ;

__attribute__((used)) static void
ngleSetupAttrPlanes(struct stifb_info *fb, int BufferNumber)
{
 SETUP_ATTR_ACCESS(fb, BufferNumber);
 SET_ATTR_SIZE(fb, fb->info.var.xres, fb->info.var.yres);
 FINISH_ATTR_ACCESS(fb);
 SETUP_FB(fb);
}
