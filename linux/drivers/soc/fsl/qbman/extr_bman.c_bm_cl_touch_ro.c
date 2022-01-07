
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ ce; } ;
struct bm_portal {TYPE_1__ addr; } ;


 int dpaa_touch_ro (scalar_t__) ;

__attribute__((used)) static inline void bm_cl_touch_ro(struct bm_portal *p, u32 offset)
{
 dpaa_touch_ro(p->addr.ce + offset);
}
