
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_frequency_table {int dummy; } ;
struct clk_rate_round_data {int max; unsigned long rate; struct cpufreq_frequency_table* arg; int func; int min; } ;
struct clk {int nr_freqs; } ;


 long ENOSYS ;
 long clk_rate_round_helper (struct clk_rate_round_data*) ;
 int clk_rate_table_iter ;

long clk_rate_table_round(struct clk *clk,
     struct cpufreq_frequency_table *freq_table,
     unsigned long rate)
{
 struct clk_rate_round_data table_round = {
  .min = 0,
  .max = clk->nr_freqs - 1,
  .func = clk_rate_table_iter,
  .arg = freq_table,
  .rate = rate,
 };

 if (clk->nr_freqs < 1)
  return -ENOSYS;

 return clk_rate_round_helper(&table_round);
}
