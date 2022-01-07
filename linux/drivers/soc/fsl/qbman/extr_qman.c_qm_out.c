
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ ci; } ;
struct qm_portal {TYPE_1__ addr; } ;


 int iowrite32be (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void qm_out(struct qm_portal *p, u32 offset, u32 val)
{
 iowrite32be(val, p->addr.ci + offset);
}
