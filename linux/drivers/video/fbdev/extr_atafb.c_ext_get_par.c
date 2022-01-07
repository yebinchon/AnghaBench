
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atafb_par {int screen_base; } ;


 int external_screen_base ;

__attribute__((used)) static void ext_get_par(struct atafb_par *par)
{
 par->screen_base = external_screen_base;
}
