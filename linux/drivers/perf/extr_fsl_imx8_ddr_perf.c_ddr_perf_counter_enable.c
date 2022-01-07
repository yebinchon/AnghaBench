
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ddr_pmu {scalar_t__ base; } ;


 int CNTL_CLEAR ;
 int CNTL_CSV_MASK ;
 int CNTL_EN ;
 scalar_t__ COUNTER_CNTL ;
 int FIELD_PREP (int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ddr_perf_counter_enable(struct ddr_pmu *pmu, int config,
      int counter, bool enable)
{
 u8 reg = counter * 4 + COUNTER_CNTL;
 int val;

 if (enable) {





  writel(0, pmu->base + reg);
  val = CNTL_EN | CNTL_CLEAR;
  val |= FIELD_PREP(CNTL_CSV_MASK, config);
  writel(val, pmu->base + reg);
 } else {

  writel(0, pmu->base + reg);
 }
}
