
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char inb_p (unsigned short) ;

__attribute__((used)) static inline unsigned char sInB(unsigned short port)
{
 return inb_p(port);
}
