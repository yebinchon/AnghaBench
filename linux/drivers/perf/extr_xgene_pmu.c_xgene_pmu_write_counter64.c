
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct xgene_pmu_dev {int dummy; } ;


 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int xgene_pmu_write_counter32 (struct xgene_pmu_dev*,int,int ) ;

__attribute__((used)) static inline void
xgene_pmu_write_counter64(struct xgene_pmu_dev *pmu_dev, int idx, u64 val)
{
 u32 cnt_lo, cnt_hi;

 cnt_hi = upper_32_bits(val);
 cnt_lo = lower_32_bits(val);


 xgene_pmu_write_counter32(pmu_dev, 2 * idx, cnt_lo);
 xgene_pmu_write_counter32(pmu_dev, 2 * idx + 1, cnt_hi);
}
