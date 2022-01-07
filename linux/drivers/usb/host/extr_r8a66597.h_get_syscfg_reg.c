
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long SYSCFG0 ;
 unsigned long SYSCFG1 ;

__attribute__((used)) static inline unsigned long get_syscfg_reg(int port)
{
 return port == 0 ? SYSCFG0 : SYSCFG1;
}
