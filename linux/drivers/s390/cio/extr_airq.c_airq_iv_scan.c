
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airq_iv {int vector; } ;


 int clear_bit_inv (unsigned long,int ) ;
 unsigned long find_next_bit_inv (int ,unsigned long,unsigned long) ;

unsigned long airq_iv_scan(struct airq_iv *iv, unsigned long start,
      unsigned long end)
{
 unsigned long bit;


 bit = find_next_bit_inv(iv->vector, end, start);
 if (bit >= end)
  return -1UL;
 clear_bit_inv(bit, iv->vector);
 return bit;
}
