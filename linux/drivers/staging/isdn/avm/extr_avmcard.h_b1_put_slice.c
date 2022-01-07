
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int b1_put_byte (unsigned int,int ) ;
 int b1_put_word (unsigned int,unsigned int) ;

__attribute__((used)) static inline void b1_put_slice(unsigned int base,
    unsigned char *dp, unsigned int len)
{
 unsigned i = len;
 b1_put_word(base, i);
 while (i-- > 0)
  b1_put_byte(base, *dp++);
}
