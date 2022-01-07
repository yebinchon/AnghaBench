
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int memset16 (int *,int ,unsigned int) ;

__attribute__((used)) static inline void
sisusbcon_memsetw(u16 *s, u16 c, unsigned int count)
{
 memset16(s, c, count / 2);
}
