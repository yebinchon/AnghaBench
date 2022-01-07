
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loopback_test {int mask; } ;



__attribute__((used)) static inline int device_enabled(struct loopback_test *t, int dev_idx)
{
 if (!t->mask || (t->mask & (1 << dev_idx)))
  return 1;

 return 0;
}
