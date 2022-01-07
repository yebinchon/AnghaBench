
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int is_utf8_continuation(unsigned char c)
{
 return (c & 0xc0) == 0x80;
}
