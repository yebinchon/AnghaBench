
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blogic_byte_count {unsigned int units; int billions; } ;



__attribute__((used)) static inline void blogic_addcount(struct blogic_byte_count *bytecount,
     unsigned int amount)
{
 bytecount->units += amount;
 if (bytecount->units > 999999999) {
  bytecount->units -= 1000000000;
  bytecount->billions++;
 }
}
