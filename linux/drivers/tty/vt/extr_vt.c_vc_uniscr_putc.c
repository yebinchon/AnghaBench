
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {size_t vc_y; size_t vc_x; } ;
struct uni_screen {int ** lines; } ;
typedef int char32_t ;


 struct uni_screen* get_vc_uniscr (struct vc_data*) ;

__attribute__((used)) static void vc_uniscr_putc(struct vc_data *vc, char32_t uc)
{
 struct uni_screen *uniscr = get_vc_uniscr(vc);

 if (uniscr)
  uniscr->lines[vc->vc_y][vc->vc_x] = uc;
}
