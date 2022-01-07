
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {int vc_hi_font_mask; scalar_t__ vc_origin; } ;


 int scr_readw (int *) ;
 int * screen_pos (struct vc_data*,int,int) ;

__attribute__((used)) static unsigned char get_attributes(struct vc_data *vc, u16 *pos)
{
 pos = screen_pos(vc, pos - (u16 *)vc->vc_origin, 1);
 return (scr_readw(pos) & ~vc->vc_hi_font_mask) >> 8;
}
