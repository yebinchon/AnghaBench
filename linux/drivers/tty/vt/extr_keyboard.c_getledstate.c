
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ledstate ;

__attribute__((used)) static unsigned char getledstate(void)
{
 return ledstate & 0xff;
}
