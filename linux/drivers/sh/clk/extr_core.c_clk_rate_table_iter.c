
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_frequency_table {unsigned long frequency; } ;
struct clk_rate_round_data {struct cpufreq_frequency_table* arg; } ;


 unsigned long CPUFREQ_ENTRY_INVALID ;

__attribute__((used)) static long clk_rate_table_iter(unsigned int pos,
    struct clk_rate_round_data *rounder)
{
 struct cpufreq_frequency_table *freq_table = rounder->arg;
 unsigned long freq = freq_table[pos].frequency;

 if (freq == CPUFREQ_ENTRY_INVALID)
  freq = 0;

 return freq;
}
