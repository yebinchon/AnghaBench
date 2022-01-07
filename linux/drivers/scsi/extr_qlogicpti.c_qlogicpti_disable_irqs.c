
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlogicpti {scalar_t__ qregs; } ;


 scalar_t__ SBUS_CTRL ;
 int sbus_writew (int ,scalar_t__) ;

__attribute__((used)) static inline void qlogicpti_disable_irqs(struct qlogicpti *qpti)
{
 sbus_writew(0, qpti->qregs + SBUS_CTRL);
}
