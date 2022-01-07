
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hweight16 (int ) ;
 int kbd_token_bits ;

__attribute__((used)) static int kbd_get_valid_token_counts(void)
{
 return hweight16(kbd_token_bits);
}
