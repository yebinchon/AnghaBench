
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vaddr; } ;
typedef TYPE_1__ vaddr_t ;
typedef int u_int32_t ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void mga_writel(vaddr_t va, unsigned int offs, u_int32_t value) {
 writel(value, va.vaddr + offs);
}
