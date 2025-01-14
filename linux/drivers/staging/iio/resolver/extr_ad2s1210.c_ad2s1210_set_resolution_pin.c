
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad2s1210_state {int resolution; int * gpios; } ;


 size_t AD2S1210_RES0 ;
 size_t AD2S1210_RES1 ;
 int ** ad2s1210_res_pins ;
 int gpiod_set_value (int ,int ) ;

__attribute__((used)) static inline void ad2s1210_set_resolution_pin(struct ad2s1210_state *st)
{
 gpiod_set_value(st->gpios[AD2S1210_RES0],
   ad2s1210_res_pins[(st->resolution - 10) / 2][0]);
 gpiod_set_value(st->gpios[AD2S1210_RES1],
   ad2s1210_res_pins[(st->resolution - 10) / 2][1]);
}
