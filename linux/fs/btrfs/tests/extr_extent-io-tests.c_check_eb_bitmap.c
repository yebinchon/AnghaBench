
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;


 unsigned long BITS_PER_BYTE ;
 int EINVAL ;
 int extent_buffer_test_bit (struct extent_buffer*,unsigned long,unsigned long) ;
 int test_bit (unsigned long,unsigned long*) ;
 int test_err (char*) ;

__attribute__((used)) static int check_eb_bitmap(unsigned long *bitmap, struct extent_buffer *eb,
      unsigned long len)
{
 unsigned long i;

 for (i = 0; i < len * BITS_PER_BYTE; i++) {
  int bit, bit1;

  bit = !!test_bit(i, bitmap);
  bit1 = !!extent_buffer_test_bit(eb, 0, i);
  if (bit1 != bit) {
   test_err("bits do not match");
   return -EINVAL;
  }

  bit1 = !!extent_buffer_test_bit(eb, i / BITS_PER_BYTE,
      i % BITS_PER_BYTE);
  if (bit1 != bit) {
   test_err("offset bits do not match");
   return -EINVAL;
  }
 }
 return 0;
}
