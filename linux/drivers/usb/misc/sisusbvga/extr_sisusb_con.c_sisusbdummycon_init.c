
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_can_do_color; int vc_cols; int vc_rows; } ;


 int vc_resize (struct vc_data*,int,int) ;

__attribute__((used)) static void sisusbdummycon_init(struct vc_data *vc, int init)
{
    vc->vc_can_do_color = 1;
    if (init) {
 vc->vc_cols = 80;
 vc->vc_rows = 25;
    } else
 vc_resize(vc, 80, 25);
}
