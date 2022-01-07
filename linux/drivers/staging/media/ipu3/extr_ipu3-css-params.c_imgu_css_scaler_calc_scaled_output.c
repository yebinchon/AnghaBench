
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_css_scaler_info {unsigned int phase_step; } ;


 int IMGU_SCALER_FIR_PHASES ;
 int IMGU_SCALER_PHASES ;
 int IMGU_SCALER_TAPS_Y ;

__attribute__((used)) static unsigned int
imgu_css_scaler_calc_scaled_output(unsigned int input,
       struct imgu_css_scaler_info *info)
{
 unsigned int arg1 = input * info->phase_step +
   (1 - IMGU_SCALER_TAPS_Y / 2) * IMGU_SCALER_FIR_PHASES -
   IMGU_SCALER_FIR_PHASES / (2 * IMGU_SCALER_PHASES);
 unsigned int arg2 = ((IMGU_SCALER_TAPS_Y / 2) * IMGU_SCALER_FIR_PHASES +
   IMGU_SCALER_FIR_PHASES / (2 * IMGU_SCALER_PHASES)) *
   IMGU_SCALER_FIR_PHASES + info->phase_step / 2;

 return ((arg1 + (arg2 - IMGU_SCALER_FIR_PHASES * info->phase_step) /
  IMGU_SCALER_FIR_PHASES) / (2 * IMGU_SCALER_FIR_PHASES)) * 2;
}
