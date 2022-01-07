
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * color_table ;
 int * default_blu ;
 int * default_grn ;
 int * default_red ;
 int newport_bfwait (int ) ;
 int newport_cmap_setaddr (int ,int ) ;
 int newport_cmap_setrgb (int ,int ,int ,int ) ;
 int npregs ;

__attribute__((used)) static inline void newport_init_cmap(void)
{
 unsigned short i;

 for (i = 0; i < 16; i++) {
  newport_bfwait(npregs);
  newport_cmap_setaddr(npregs, color_table[i]);
  newport_cmap_setrgb(npregs,
        default_red[i],
        default_grn[i], default_blu[i]);
 }
}
