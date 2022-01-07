
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int error; } ;
struct nal_h264_hrd_parameters {unsigned int cpb_cnt_minus1; unsigned int* bit_rate_value_minus1; unsigned int* cpb_size_value_minus1; int time_offset_length; int dpb_output_delay_length_minus1; int cpb_removal_delay_length_minus1; int initial_cpb_removal_delay_length_minus1; int * cbr_flag; int cpb_size_scale; int bit_rate_scale; } ;


 int EINVAL ;
 int rbsp_bit (struct rbsp*,int *) ;
 int rbsp_bits (struct rbsp*,int,int *) ;
 int rbsp_uev (struct rbsp*,unsigned int*) ;

__attribute__((used)) static void nal_h264_rbsp_hrd_parameters(struct rbsp *rbsp,
      struct nal_h264_hrd_parameters *hrd)
{
 unsigned int i;

 if (!hrd) {
  rbsp->error = -EINVAL;
  return;
 }

 rbsp_uev(rbsp, &hrd->cpb_cnt_minus1);
 rbsp_bits(rbsp, 4, &hrd->bit_rate_scale);
 rbsp_bits(rbsp, 4, &hrd->cpb_size_scale);

 for (i = 0; i <= hrd->cpb_cnt_minus1; i++) {
  rbsp_uev(rbsp, &hrd->bit_rate_value_minus1[i]);
  rbsp_uev(rbsp, &hrd->cpb_size_value_minus1[i]);
  rbsp_bit(rbsp, &hrd->cbr_flag[i]);
 }

 rbsp_bits(rbsp, 5, &hrd->initial_cpb_removal_delay_length_minus1);
 rbsp_bits(rbsp, 5, &hrd->cpb_removal_delay_length_minus1);
 rbsp_bits(rbsp, 5, &hrd->dpb_output_delay_length_minus1);
 rbsp_bits(rbsp, 5, &hrd->time_offset_length);
}
