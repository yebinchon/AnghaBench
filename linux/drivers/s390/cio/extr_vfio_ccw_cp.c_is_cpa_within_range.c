
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ccw1 {int dummy; } ;



__attribute__((used)) static inline int is_cpa_within_range(u32 cpa, u32 head, int len)
{
 u32 tail = head + (len - 1) * sizeof(struct ccw1);

 return (head <= cpa && cpa <= tail);
}
