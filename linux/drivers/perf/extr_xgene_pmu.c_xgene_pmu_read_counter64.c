
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct xgene_pmu_dev {int dummy; } ;


 scalar_t__ xgene_pmu_read_counter32 (struct xgene_pmu_dev*,int) ;

__attribute__((used)) static inline u64 xgene_pmu_read_counter64(struct xgene_pmu_dev *pmu_dev,
        int idx)
{
 u32 lo, hi;







 do {
  hi = xgene_pmu_read_counter32(pmu_dev, 2 * idx + 1);
  lo = xgene_pmu_read_counter32(pmu_dev, 2 * idx);
 } while (hi != xgene_pmu_read_counter32(pmu_dev, 2 * idx + 1));

 return (((u64)hi << 32) | lo);
}
