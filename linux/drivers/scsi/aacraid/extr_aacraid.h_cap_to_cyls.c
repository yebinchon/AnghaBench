
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int sector_t ;


 int sector_div (unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int cap_to_cyls(sector_t capacity, unsigned divisor)
{
 sector_div(capacity, divisor);
 return capacity;
}
