
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __stringify_1 (int const) ;

__attribute__((used)) static char *decode_hioctl(unsigned int cmd)
{
 switch (cmd) {
 case 128:
  return __stringify_1(128);
 }

 return "UNKNOWN";
}
