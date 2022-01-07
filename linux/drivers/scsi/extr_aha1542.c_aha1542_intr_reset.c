
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int CONTROL (int ) ;
 int IRST ;
 int outb (int ,int ) ;

__attribute__((used)) static inline void aha1542_intr_reset(u16 base)
{
 outb(IRST, CONTROL(base));
}
