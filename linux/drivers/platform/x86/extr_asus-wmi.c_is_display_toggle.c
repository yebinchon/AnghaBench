
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_display_toggle(int code)
{

 if ((code >= 0x61 && code <= 0x67) ||
     (code >= 0x8c && code <= 0x93) ||
     (code >= 0xa0 && code <= 0xa7) ||
     (code >= 0xd0 && code <= 0xd5))
  return 1;

 return 0;
}
