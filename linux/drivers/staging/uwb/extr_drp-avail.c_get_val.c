
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef unsigned long u8 ;


 int BUG_ON (int) ;

__attribute__((used)) static
unsigned long get_val(u8 *array, size_t itr, size_t len)
{
 unsigned long val = 0;
 size_t top = itr + len;

 BUG_ON(len > sizeof(val));

 while (itr < top) {
  val <<= 8;
  val |= array[top - 1];
  top--;
 }
 val <<= 8 * (sizeof(val) - len);
 return val;
}
