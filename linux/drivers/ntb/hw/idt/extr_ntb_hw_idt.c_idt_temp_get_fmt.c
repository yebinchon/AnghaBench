
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int idt_get_deg (long) ;
 scalar_t__ idt_get_deg_frac (long) ;

__attribute__((used)) static inline u8 idt_temp_get_fmt(long mdegC)
{
 return (idt_get_deg(mdegC) << 1) | (idt_get_deg_frac(mdegC) ? 1 : 0);
}
