
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_abb {int txdone_mask; int int_base; } ;


 int readl (int ) ;

__attribute__((used)) static inline bool ti_abb_check_txdone(const struct ti_abb *abb)
{
 return !!(readl(abb->int_base) & abb->txdone_mask);
}
