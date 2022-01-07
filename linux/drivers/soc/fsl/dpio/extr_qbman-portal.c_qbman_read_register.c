
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qbman_swp {scalar_t__ addr_cinh; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 qbman_read_register(struct qbman_swp *p, u32 offset)
{
 return readl_relaxed(p->addr_cinh + offset);
}
