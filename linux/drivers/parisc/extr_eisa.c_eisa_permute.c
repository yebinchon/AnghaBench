
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long eisa_permute(unsigned short port)
{
 if (port & 0x300) {
  return 0xfc000000 | ((port & 0xfc00) >> 6)
   | ((port & 0x3f8) << 9) | (port & 7);
 } else {
  return 0xfc000000 | port;
 }
}
