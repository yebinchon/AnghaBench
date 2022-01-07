
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static inline const char *xhci_ep_type_string(u8 type)
{
 switch (type) {
 case 128:
  return "Isoc OUT";
 case 133:
  return "Bulk OUT";
 case 130:
  return "Int OUT";
 case 132:
  return "Ctrl";
 case 129:
  return "Isoc IN";
 case 134:
  return "Bulk IN";
 case 131:
  return "Int IN";
 default:
  return "INVALID";
 }
}
