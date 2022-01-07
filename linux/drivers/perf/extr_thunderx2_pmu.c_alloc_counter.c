
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx2_uncore_pmu {int max_counters; int active_counters; } ;


 int ENOSPC ;
 int find_first_zero_bit (int ,int) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int alloc_counter(struct tx2_uncore_pmu *tx2_pmu)
{
 int counter;

 counter = find_first_zero_bit(tx2_pmu->active_counters,
    tx2_pmu->max_counters);
 if (counter == tx2_pmu->max_counters)
  return -ENOSPC;

 set_bit(counter, tx2_pmu->active_counters);
 return counter;
}
