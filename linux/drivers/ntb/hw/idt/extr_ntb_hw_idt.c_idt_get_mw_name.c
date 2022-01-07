
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum idt_mw_type { ____Placeholder_idt_mw_type } idt_mw_type ;






__attribute__((used)) static inline char *idt_get_mw_name(enum idt_mw_type mw_type)
{
 switch (mw_type) {
 case 130:
  return "DIR  ";
 case 129:
  return "LUT12";
 case 128:
  return "LUT24";
 default:
  break;
 }

 return "unknown";
}
