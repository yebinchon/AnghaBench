
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *hcfs2string(int state)
{
 switch (state) {
 case 130:
  return "reset";
 case 129:
  return "resume";
 case 131:
  return "operational";
 case 128:
  return "suspend";
 }
 return "?";
}
