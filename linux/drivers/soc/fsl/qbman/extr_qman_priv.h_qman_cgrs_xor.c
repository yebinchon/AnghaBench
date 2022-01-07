
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * state; } ;
struct qman_cgrs {TYPE_1__ q; } ;



__attribute__((used)) static inline void qman_cgrs_xor(struct qman_cgrs *dest,
   const struct qman_cgrs *a, const struct qman_cgrs *b)
{
 int ret;
 u32 *_d = dest->q.state;
 const u32 *_a = a->q.state;
 const u32 *_b = b->q.state;

 for (ret = 0; ret < 8; ret++)
  *_d++ = *_a++ ^ *_b++;
}
