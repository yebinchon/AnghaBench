
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsps_glue {scalar_t__ vbus_irq; } ;


 int dsps_mod_timer (struct dsps_glue*,int) ;

__attribute__((used)) static void dsps_mod_timer_optional(struct dsps_glue *glue)
{
 if (glue->vbus_irq)
  return;

 dsps_mod_timer(glue, -1);
}
