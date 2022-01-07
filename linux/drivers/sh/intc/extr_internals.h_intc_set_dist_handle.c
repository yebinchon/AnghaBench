
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intc_desc_int {int dummy; } ;
struct intc_desc {int dummy; } ;
typedef int intc_enum ;



__attribute__((used)) static inline void
intc_set_dist_handle(unsigned int irq, struct intc_desc *desc,
       struct intc_desc_int *d, intc_enum id) { }
