
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int * vc_palette; } ;


 int * default_blu ;
 int * default_grn ;
 int * default_red ;
 int set_palette (struct vc_data*) ;

void reset_palette(struct vc_data *vc)
{
 int j, k;
 for (j=k=0; j<16; j++) {
  vc->vc_palette[k++] = default_red[j];
  vc->vc_palette[k++] = default_grn[j];
  vc->vc_palette[k++] = default_blu[j];
 }
 set_palette(vc);
}
