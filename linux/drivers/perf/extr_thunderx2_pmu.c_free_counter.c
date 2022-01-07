
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx2_uncore_pmu {int active_counters; } ;


 int clear_bit (int,int ) ;

__attribute__((used)) static inline void free_counter(struct tx2_uncore_pmu *tx2_pmu, int counter)
{
 clear_bit(counter, tx2_pmu->active_counters);
}
