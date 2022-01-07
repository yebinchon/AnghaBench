
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prefetch (void*) ;

__attribute__((used)) static inline void dpaa_touch_ro(void *p)
{



 prefetch(p);
}
