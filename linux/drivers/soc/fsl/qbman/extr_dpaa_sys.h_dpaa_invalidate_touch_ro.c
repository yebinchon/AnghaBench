
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dpaa_invalidate (void*) ;
 int dpaa_touch_ro (void*) ;

__attribute__((used)) static inline void dpaa_invalidate_touch_ro(void *p)
{
 dpaa_invalidate(p);
 dpaa_touch_ro(p);
}
