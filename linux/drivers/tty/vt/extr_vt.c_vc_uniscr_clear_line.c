
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {size_t vc_y; } ;
struct uni_screen {int ** lines; } ;
typedef int char32_t ;


 struct uni_screen* get_vc_uniscr (struct vc_data*) ;
 int memset32 (int *,char,unsigned int) ;

__attribute__((used)) static void vc_uniscr_clear_line(struct vc_data *vc, unsigned int x,
     unsigned int nr)
{
 struct uni_screen *uniscr = get_vc_uniscr(vc);

 if (uniscr) {
  char32_t *ln = uniscr->lines[vc->vc_y];

  memset32(&ln[x], ' ', nr);
 }
}
