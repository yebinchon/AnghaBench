
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;



__attribute__((used)) static inline uint num_channels(uint chanmask)
{
 uint num = 0;

 while (chanmask) {
  num += (chanmask & 1);
  chanmask >>= 1;
 }

 return num;
}
