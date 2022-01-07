
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_can_do_color; int vc_cols; int vc_rows; } ;


 int newport_xsize ;
 int newport_ysize ;
 int vc_resize (struct vc_data*,int,int) ;

__attribute__((used)) static void newport_init(struct vc_data *vc, int init)
{
 int cols, rows;

 cols = newport_xsize / 8;
 rows = newport_ysize / 16;
 vc->vc_can_do_color = 1;
 if (init) {
  vc->vc_cols = cols;
  vc->vc_rows = rows;
 } else
  vc_resize(vc, cols, rows);
}
