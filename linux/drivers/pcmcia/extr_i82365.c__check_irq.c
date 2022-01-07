
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_irq (int,int ) ;
 int i365_count_irq ;
 scalar_t__ request_irq (int,int ,int,char*,int ) ;

__attribute__((used)) static inline int _check_irq(int irq, int flags)
{
    if (request_irq(irq, i365_count_irq, flags, "x", i365_count_irq) != 0)
 return -1;
    free_irq(irq, i365_count_irq);
    return 0;
}
