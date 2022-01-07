
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ ci; } ;
struct bm_portal {TYPE_1__ addr; } ;


 scalar_t__ ioread32be (scalar_t__) ;

__attribute__((used)) static inline u32 bm_in(struct bm_portal *p, u32 offset)
{
 return ioread32be(p->addr.ci + offset);
}
