
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vml_info {int dummy; } ;


 int mdelay (int) ;

__attribute__((used)) static void vml_wait_vblank(struct vml_info *vinfo)
{

 mdelay(20);
}
