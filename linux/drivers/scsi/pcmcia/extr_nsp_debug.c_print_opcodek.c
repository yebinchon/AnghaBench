
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char*** commands ;
 size_t group (unsigned char) ;
 int printk (char*,char const*,unsigned char) ;
 char const* reserved ;
 char const* unknown ;
 char const* vendor ;

__attribute__((used)) static void print_opcodek(unsigned char opcode)
{
 const char **table = commands[ group(opcode) ];

 switch ((unsigned long) table) {
 case 129:
  printk("%s[%02x] ", reserved, opcode);
  break;
 case 130:
  printk("%s(notext)[%02x] ", unknown, opcode);
  break;
 case 128:
  printk("%s[%02x] ", vendor, opcode);
  break;
 default:
  if (table[opcode & 0x1f] != unknown)
   printk("%s[%02x] ", table[opcode & 0x1f], opcode);
  else
   printk("%s[%02x] ", unknown, opcode);
  break;
 }
}
