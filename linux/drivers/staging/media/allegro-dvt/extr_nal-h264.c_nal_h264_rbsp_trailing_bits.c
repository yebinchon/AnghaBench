
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {scalar_t__ pos; } ;


 int rbsp_bit (struct rbsp*,unsigned int*) ;
 int rbsp_bits (struct rbsp*,scalar_t__,unsigned int*) ;
 scalar_t__ round_up (scalar_t__,int) ;

__attribute__((used)) static void nal_h264_rbsp_trailing_bits(struct rbsp *rbsp)
{
 unsigned int rbsp_stop_one_bit = 1;
 unsigned int rbsp_alignment_zero_bit = 0;

 rbsp_bit(rbsp, &rbsp_stop_one_bit);
 rbsp_bits(rbsp, round_up(rbsp->pos, 8) - rbsp->pos,
    &rbsp_alignment_zero_bit);
}
