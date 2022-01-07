
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long INTSTS1 ;
 unsigned long INTSTS2 ;

__attribute__((used)) static inline unsigned long get_intsts_reg(int port)
{
 return port == 0 ? INTSTS1 : INTSTS2;
}
