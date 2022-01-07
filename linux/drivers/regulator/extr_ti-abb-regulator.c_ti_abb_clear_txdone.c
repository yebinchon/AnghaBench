
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_abb {int int_base; int txdone_mask; } ;


 int writel (int ,int ) ;

__attribute__((used)) static inline void ti_abb_clear_txdone(const struct ti_abb *abb)
{
 writel(abb->txdone_mask, abb->int_base);
}
