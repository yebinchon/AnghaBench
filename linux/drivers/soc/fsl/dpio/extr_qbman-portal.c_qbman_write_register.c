
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qbman_swp {scalar_t__ addr_cinh; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void qbman_write_register(struct qbman_swp *p, u32 offset,
     u32 value)
{
 writel_relaxed(value, p->addr_cinh + offset);
}
