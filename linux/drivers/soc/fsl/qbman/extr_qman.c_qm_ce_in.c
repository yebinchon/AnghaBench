
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * ce_be; } ;
struct qm_portal {TYPE_1__ addr; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u32 qm_ce_in(struct qm_portal *p, u32 offset)
{
 return be32_to_cpu(*(p->addr.ce_be + (offset/4)));
}
