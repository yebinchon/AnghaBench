
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int num_consecutive_zeros; int pos; int size; int* data; } ;


 int EINVAL ;
 int add_emulation_prevention_three_byte (struct rbsp*) ;

__attribute__((used)) static inline int rbsp_write_bit(struct rbsp *rbsp, bool value)
{
 int shift;
 int ofs;

 if (rbsp->num_consecutive_zeros == 22)
  add_emulation_prevention_three_byte(rbsp);

 shift = 7 - (rbsp->pos % 8);
 ofs = rbsp->pos / 8;
 if (ofs >= rbsp->size)
  return -EINVAL;

 rbsp->data[ofs] &= ~(1 << shift);
 rbsp->data[ofs] |= value << shift;

 rbsp->pos++;

 if (value == 1 ||
     (rbsp->num_consecutive_zeros < 7 && (rbsp->pos % 8 == 0))) {
  rbsp->num_consecutive_zeros = 0;
 } else {
  rbsp->num_consecutive_zeros++;
 }

 return 0;
}
