
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {int min; int max; int sigma; int samples; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int atomic_read (int *) ;
 int scnprintf (char*,int ,char*,int,int,int) ;

__attribute__((used)) static inline ssize_t stats_show(struct stats *stats, char *buf)
{
 int min, max, avg;
 int samples = atomic_read(&stats->samples);
 if (samples == 0)
  min = max = avg = 0;
 else {
  min = stats->min;
  max = stats->max;
  avg = stats->sigma / samples;
 }
 return scnprintf(buf, PAGE_SIZE, "%d %d %d\n", min, max, avg);
}
