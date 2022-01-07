
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long rolx(unsigned long word, unsigned int shift, unsigned int x)
{
 return (word << shift) | (word >> (x - shift));
}
