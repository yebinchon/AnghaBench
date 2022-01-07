
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 idt_get_deg_frac(long mdegC)
{
 return (mdegC % 1000) >= 500 ? 5 : 0;
}
