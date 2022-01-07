
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct dfs_cache_entry {int ce_etime; } ;


 int ktime_get_coarse_real_ts64 (struct timespec64*) ;
 scalar_t__ timespec64_compare (struct timespec64*,int *) ;

__attribute__((used)) static inline bool cache_entry_expired(const struct dfs_cache_entry *ce)
{
 struct timespec64 ts;

 ktime_get_coarse_real_ts64(&ts);
 return timespec64_compare(&ts, &ce->ce_etime) >= 0;
}
