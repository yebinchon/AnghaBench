
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* tmds_setting_info; } ;
struct TYPE_3__ {int h_active; int v_active; scalar_t__ iga_path; } ;


 scalar_t__ IGA2 ;
 TYPE_2__* viaparinfo ;

void viafb_update_device_setting(int hres, int vres, int bpp, int flag)
{
 if (flag == 0) {
  viaparinfo->tmds_setting_info->h_active = hres;
  viaparinfo->tmds_setting_info->v_active = vres;
 } else {

  if (viaparinfo->tmds_setting_info->iga_path == IGA2) {
   viaparinfo->tmds_setting_info->h_active = hres;
   viaparinfo->tmds_setting_info->v_active = vres;
  }

 }
}
