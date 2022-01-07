
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad2s1210_state {int mode; int * gpios; } ;
typedef enum ad2s1210_mode { ____Placeholder_ad2s1210_mode } ad2s1210_mode ;


 size_t AD2S1210_A0 ;
 size_t AD2S1210_A1 ;
 int ** ad2s1210_mode_vals ;
 int gpiod_set_value (int ,int ) ;

__attribute__((used)) static inline void ad2s1210_set_mode(enum ad2s1210_mode mode,
         struct ad2s1210_state *st)
{
 gpiod_set_value(st->gpios[AD2S1210_A0], ad2s1210_mode_vals[mode][0]);
 gpiod_set_value(st->gpios[AD2S1210_A1], ad2s1210_mode_vals[mode][1]);
 st->mode = mode;
}
