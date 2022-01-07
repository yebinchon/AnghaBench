
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pr_type { ____Placeholder_pr_type } pr_type ;
__attribute__((used)) static char sd_pr_type(enum pr_type type)
{
 switch (type) {
 case 130:
  return 0x01;
 case 133:
  return 0x03;
 case 128:
  return 0x05;
 case 131:
  return 0x06;
 case 129:
  return 0x07;
 case 132:
  return 0x08;
 default:
  return 0;
 }
}
