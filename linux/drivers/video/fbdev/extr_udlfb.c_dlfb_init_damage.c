
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlfb_data {scalar_t__ damage_y2; void* damage_y; scalar_t__ damage_x2; void* damage_x; } ;


 void* INT_MAX ;

__attribute__((used)) static void dlfb_init_damage(struct dlfb_data *dlfb)
{
 dlfb->damage_x = INT_MAX;
 dlfb->damage_x2 = 0;
 dlfb->damage_y = INT_MAX;
 dlfb->damage_y2 = 0;
}
