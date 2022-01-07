
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __stringify_1 (int const) ;

__attribute__((used)) static char *decode_ioctl(unsigned int cmd)
{
 switch (cmd) {
 case 137:
  return __stringify_1(137);
 case 132:
  return __stringify_1(132);
 case 131:
  return __stringify_1(131);
 case 128:
  return __stringify_1(128);
 case 133:
  return __stringify_1(133);
 case 136:
  return __stringify_1(136);
 case 130:
  return __stringify_1(130);
 case 129:
  return __stringify_1(129);
 case 134:
  return __stringify_1(134);
 case 135:
  return __stringify_1(135);
 }

 return "UNKNOWN";
}
