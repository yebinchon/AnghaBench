
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {unsigned int vc_cols; unsigned int vc_rows; unsigned int vc_size_row; int vc_screenbuf_size; int vc_halfcolor; int paste_wait; int vc_itcolor; int vc_ulcolor; int vc_def_color; int * vc_palette; int vc_origin; int vc_pos; } ;


 int * default_blu ;
 int default_color ;
 int * default_grn ;
 int default_italic_color ;
 int * default_red ;
 int default_underline_color ;
 int init_waitqueue_head (int *) ;
 int reset_terminal (struct vc_data*,int) ;
 int reset_vc (struct vc_data*) ;
 int set_origin (struct vc_data*) ;

__attribute__((used)) static void vc_init(struct vc_data *vc, unsigned int rows,
      unsigned int cols, int do_clear)
{
 int j, k ;

 vc->vc_cols = cols;
 vc->vc_rows = rows;
 vc->vc_size_row = cols << 1;
 vc->vc_screenbuf_size = vc->vc_rows * vc->vc_size_row;

 set_origin(vc);
 vc->vc_pos = vc->vc_origin;
 reset_vc(vc);
 for (j=k=0; j<16; j++) {
  vc->vc_palette[k++] = default_red[j] ;
  vc->vc_palette[k++] = default_grn[j] ;
  vc->vc_palette[k++] = default_blu[j] ;
 }
 vc->vc_def_color = default_color;
 vc->vc_ulcolor = default_underline_color;
 vc->vc_itcolor = default_italic_color;
 vc->vc_halfcolor = 0x08;
 init_waitqueue_head(&vc->paste_wait);
 reset_terminal(vc, do_clear);
}
