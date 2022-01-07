
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {unsigned int vc_cols; } ;
struct uni_screen {int * lines; } ;


 struct uni_screen* get_vc_uniscr (struct vc_data*) ;
 int memset32 (int ,char,unsigned int) ;

__attribute__((used)) static void vc_uniscr_clear_lines(struct vc_data *vc, unsigned int y,
      unsigned int nr)
{
 struct uni_screen *uniscr = get_vc_uniscr(vc);

 if (uniscr) {
  unsigned int cols = vc->vc_cols;

  while (nr--)
   memset32(uniscr->lines[y++], ' ', cols);
 }
}
