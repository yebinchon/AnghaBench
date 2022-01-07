
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_sge {int* counter_val; } ;


 int ARRAY_SIZE (int*) ;
 int INT_MAX ;

__attribute__((used)) static int
csio_closest_thresh(struct csio_sge *s, int cnt)
{
 int i, delta, match = 0, min_delta = INT_MAX;

 for (i = 0; i < ARRAY_SIZE(s->counter_val); i++) {
  delta = cnt - s->counter_val[i];
  if (delta < 0)
   delta = -delta;
  if (delta < min_delta) {
   min_delta = delta;
   match = i;
  }
 }
 return match;
}
