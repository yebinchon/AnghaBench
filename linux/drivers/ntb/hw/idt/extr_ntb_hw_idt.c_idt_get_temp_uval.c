
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline long idt_get_temp_uval(u32 data)
{
 return (data / 2) * 1000 + (data & 0x1 ? 500 : 0);
}
