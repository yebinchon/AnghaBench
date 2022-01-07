
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;





 int WARN_ON (int) ;

__attribute__((used)) static const char *alloc_name(u64 flags)
{
 switch (flags) {
 case 129 | 130:
  return "mixed";
 case 129:
  return "metadata";
 case 130:
  return "data";
 case 128:
  return "system";
 default:
  WARN_ON(1);
  return "invalid-combination";
 };
}
