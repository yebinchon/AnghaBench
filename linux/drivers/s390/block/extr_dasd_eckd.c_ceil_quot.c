
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int
ceil_quot(unsigned int d1, unsigned int d2)
{
 return (d1 + (d2 - 1)) / d2;
}
