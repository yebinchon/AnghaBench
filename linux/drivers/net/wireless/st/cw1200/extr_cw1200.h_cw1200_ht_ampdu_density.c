
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ampdu_density; } ;
struct cw1200_ht_info {TYPE_1__ ht_cap; } ;


 int cw1200_is_ht (struct cw1200_ht_info const*) ;

__attribute__((used)) static inline int cw1200_ht_ampdu_density(const struct cw1200_ht_info *ht_info)
{
 if (!cw1200_is_ht(ht_info))
  return 0;
 return ht_info->ht_cap.ampdu_density;
}
