
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {scalar_t__ num_consecutive_zeros; } ;


 int EINVAL ;
 unsigned int EMULATION_PREVENTION_THREE_BYTE ;
 int rbsp_read_bits (struct rbsp*,int,unsigned int*) ;

__attribute__((used)) static int discard_emulation_prevention_three_byte(struct rbsp *rbsp)
{
 unsigned int tmp = 0;

 rbsp->num_consecutive_zeros = 0;
 rbsp_read_bits(rbsp, 8, &tmp);
 if (tmp != EMULATION_PREVENTION_THREE_BYTE)
  return -EINVAL;

 return 0;
}
