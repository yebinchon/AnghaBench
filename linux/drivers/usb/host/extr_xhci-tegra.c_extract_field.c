
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;



__attribute__((used)) static unsigned long extract_field(u32 value, unsigned int start,
       unsigned int count)
{
 return (value >> start) & ((1 << count) - 1);
}
