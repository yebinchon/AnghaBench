
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (int,int) ;

__attribute__((used)) static int imgu_css_osys_calc_stripe_offset(int stripe_offset_out,
         int fir_phases, int phase_init,
         int phase_step, int pad_left)
{
 int stripe_offset_inp = stripe_offset_out * fir_phases -
    pad_left * phase_step;

 return DIV_ROUND_UP(stripe_offset_inp - phase_init, phase_step);
}
