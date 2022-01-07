
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb_p (int,int) ;

__attribute__((used)) static inline void sm7xx_init_hw(void)
{
 outb_p(0x18, 0x3c4);
 outb_p(0x11, 0x3c5);
}
