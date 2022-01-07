
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int imgu_css_osys_out_stripe_width(int stripe_width_inp, int fir_phases,
       int phase_init, int phase_step,
       int fir_taps, int pad_left,
       int pad_right, int column_offset)
{
 int stripe_width_out = (pad_left + stripe_width_inp +
    pad_right - column_offset) * phase_step;

 stripe_width_out = (stripe_width_out + phase_init) / fir_phases;

 return stripe_width_out - (fir_taps - 1);
}
