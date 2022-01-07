
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void blogic_inc_count(unsigned short *count)
{
 if (*count < 65535)
  (*count)++;
}
