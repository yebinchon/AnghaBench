
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool is_dcdc(int id)
{
 switch (id) {
 case 130:
 case 129:
 case 128:
  return 1;
 default:
  return 0;
 }
}
