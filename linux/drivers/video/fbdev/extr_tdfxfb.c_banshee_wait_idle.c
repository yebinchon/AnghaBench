
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdfx_par {int dummy; } ;
struct fb_info {struct tdfx_par* par; } ;


 int COMMAND_3D ;
 int COMMAND_3D_NOP ;
 int STATUS ;
 int STATUS_BUSY ;
 int banshee_make_room (struct tdfx_par*,int) ;
 int tdfx_inl (struct tdfx_par*,int ) ;
 int tdfx_outl (struct tdfx_par*,int ,int ) ;

__attribute__((used)) static int banshee_wait_idle(struct fb_info *info)
{
 struct tdfx_par *par = info->par;
 int i = 0;

 banshee_make_room(par, 1);
 tdfx_outl(par, COMMAND_3D, COMMAND_3D_NOP);

 do {
  if ((tdfx_inl(par, STATUS) & STATUS_BUSY) == 0)
   i++;
 } while (i < 3);

 return 0;
}
