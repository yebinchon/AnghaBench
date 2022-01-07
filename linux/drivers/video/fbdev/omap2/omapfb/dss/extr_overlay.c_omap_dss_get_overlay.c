
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_overlay {int dummy; } ;


 int num_overlays ;
 struct omap_overlay* overlays ;

struct omap_overlay *omap_dss_get_overlay(int num)
{
 if (num >= num_overlays)
  return ((void*)0);

 return &overlays[num];
}
