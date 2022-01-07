
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccw1 {int cda; } ;


 int ccw_is_tic (struct ccw1*) ;
 int is_cpa_within_range (int ,int ,int) ;

__attribute__((used)) static inline int is_tic_within_range(struct ccw1 *ccw, u32 head, int len)
{
 if (!ccw_is_tic(ccw))
  return 0;

 return is_cpa_within_range(ccw->cda, head, len);
}
