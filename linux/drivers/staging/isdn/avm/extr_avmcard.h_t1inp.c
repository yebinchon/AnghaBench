
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char inb (unsigned int) ;

__attribute__((used)) static inline unsigned char t1inp(unsigned int base,
      unsigned short offset)
{
 return inb(base + offset);
}
