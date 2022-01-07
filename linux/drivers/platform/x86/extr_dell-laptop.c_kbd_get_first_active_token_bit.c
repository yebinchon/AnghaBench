
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int kbd_get_token_bit (int) ;
 int kbd_tokens ;

__attribute__((used)) static int kbd_get_first_active_token_bit(void)
{
 int i;
 int ret;

 for (i = 0; i < ARRAY_SIZE(kbd_tokens); ++i) {
  ret = kbd_get_token_bit(i);
  if (ret == 1)
   return i;
 }

 return ret;
}
