
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freq_table {unsigned int frequency; } ;
struct cpufreq_cooling_device {unsigned long max_level; struct freq_table* freq_table; } ;



__attribute__((used)) static unsigned long get_level(struct cpufreq_cooling_device *cpufreq_cdev,
          unsigned int freq)
{
 struct freq_table *freq_table = cpufreq_cdev->freq_table;
 unsigned long level;

 for (level = 1; level <= cpufreq_cdev->max_level; level++)
  if (freq > freq_table[level].frequency)
   break;

 return level - 1;
}
