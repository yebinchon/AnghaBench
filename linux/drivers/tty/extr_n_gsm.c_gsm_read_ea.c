
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EA ;

__attribute__((used)) static int gsm_read_ea(unsigned int *val, u8 c)
{

 *val <<= 7;
 *val |= c >> 1;

 return c & EA;
}
