
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vml_sys {int dummy; } ;


 int* crvml_clocks ;
 size_t crvml_nearest_index (struct vml_sys const*,int) ;

__attribute__((used)) static int crvml_nearest_clock(const struct vml_sys *sys, int clock)
{
 return crvml_clocks[crvml_nearest_index(sys, clock)];
}
