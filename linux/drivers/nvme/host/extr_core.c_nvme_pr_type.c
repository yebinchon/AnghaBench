
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pr_type { ____Placeholder_pr_type } pr_type ;
__attribute__((used)) static char nvme_pr_type(enum pr_type type)
{
 switch (type) {
 case 130:
  return 1;
 case 133:
  return 2;
 case 128:
  return 3;
 case 131:
  return 4;
 case 129:
  return 5;
 case 132:
  return 6;
 default:
  return 0;
 }
}
