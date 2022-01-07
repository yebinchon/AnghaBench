
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ctx_map ;
 int ffs (unsigned long) ;
 int restore_hw_context (int) ;

void omap_vrfb_restore_context(void)
{
 int i;
 unsigned long map = ctx_map;

 for (i = ffs(map); i; i = ffs(map)) {

  i--;
  map &= ~(1 << i);
  restore_hw_context(i);
 }
}
