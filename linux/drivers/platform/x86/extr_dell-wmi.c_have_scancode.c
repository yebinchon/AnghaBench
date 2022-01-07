
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct key_entry {scalar_t__ code; } ;



__attribute__((used)) static bool have_scancode(u32 scancode, const struct key_entry *keymap, int len)
{
 int i;

 for (i = 0; i < len; i++)
  if (keymap[i].code == scancode)
   return 1;

 return 0;
}
