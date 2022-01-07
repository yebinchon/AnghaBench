
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int BIT (int) ;
 scalar_t__ dell_smbios_find_token (int ) ;
 int kbd_token_bits ;
 int * kbd_tokens ;

__attribute__((used)) static inline void kbd_init_tokens(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(kbd_tokens); ++i)
  if (dell_smbios_find_token(kbd_tokens[i]))
   kbd_token_bits |= BIT(i);
}
