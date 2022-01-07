
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;


 int eth_random_addr (unsigned char*) ;
 unsigned char hex_to_bin (int ) ;
 scalar_t__ is_valid_ether_addr (unsigned char*) ;

__attribute__((used)) static int get_ether_addr(const char *str, u8 *dev_addr)
{
 if (str) {
  unsigned i;

  for (i = 0; i < 6; i++) {
   unsigned char num;

   if ((*str == '.') || (*str == ':'))
    str++;
   num = hex_to_bin(*str++) << 4;
   num |= hex_to_bin(*str++);
   dev_addr [i] = num;
  }
  if (is_valid_ether_addr(dev_addr))
   return 0;
 }
 eth_random_addr(dev_addr);
 return 1;
}
