
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_eint {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int mtk_eint_find_irq(struct mtk_eint *eint, unsigned long eint_n)
{
 return -EOPNOTSUPP;
}
