
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intc_handle_int {int irq; } ;



__attribute__((used)) static inline int intc_handle_int_cmp(const void *a, const void *b)
{
 const struct intc_handle_int *_a = a;
 const struct intc_handle_int *_b = b;

 return _a->irq - _b->irq;
}
