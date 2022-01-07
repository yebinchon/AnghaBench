
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {unsigned long vc_pos; } ;


 int add_softcursor (struct vc_data*) ;
 int scr_writew (int ,int *) ;
 int softcursor_original ;

void vcs_scr_writew(struct vc_data *vc, u16 val, u16 *org)
{
 scr_writew(val, org);
 if ((unsigned long)org == vc->vc_pos) {
  softcursor_original = -1;
  add_softcursor(vc);
 }
}
