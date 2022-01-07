
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct vc_data {scalar_t__ vc_pos; int vc_y; int vc_x; } ;


 int get_attributes (struct vc_data*,int *) ;
 int spk_attr ;
 scalar_t__ spk_cp ;
 int spk_cx ;
 int spk_cy ;
 int spk_old_attr ;
 scalar_t__ spk_pos ;
 int spk_x ;
 int spk_y ;

__attribute__((used)) static void speakup_date(struct vc_data *vc)
{
 spk_x = spk_cx = vc->vc_x;
 spk_y = spk_cy = vc->vc_y;
 spk_pos = spk_cp = vc->vc_pos;
 spk_old_attr = spk_attr;
 spk_attr = get_attributes(vc, (u_short *)spk_pos);
}
