
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int handle; } ;


 int AUTO ;
 int EINVAL ;
 int EIO ;
 int SPEED ;
 int STAMINA ;
 int dprintk (char*,unsigned int) ;
 TYPE_1__* gfxs_ctl ;
 scalar_t__ sony_call_snc_handle (int,int,unsigned int*) ;

__attribute__((used)) static int __sony_nc_gfx_switch_status_get(void)
{
 unsigned int result;

 if (sony_call_snc_handle(gfxs_ctl->handle,
    gfxs_ctl->handle == 0x015B ? 0x0000 : 0x0100,
    &result))
  return -EIO;

 switch (gfxs_ctl->handle) {
 case 0x0146:



  return result & 0x1 ? SPEED : STAMINA;
  break;
 case 0x015B:



  return result & 0x1 ? STAMINA : SPEED;
  break;
 case 0x0128:




  dprintk("GFX Status: 0x%x\n", result);
  return result & 0x80 ? AUTO :
   result & 0x02 ? STAMINA : SPEED;
  break;
 }
 return -EINVAL;
}
