
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {int min; int max; int sigma; int samples; } ;
typedef int s8 ;
typedef int s16 ;


 int atomic_add_return (int,int *) ;
 unsigned int atomic_read (int *) ;
 int atomic_set (int *,int) ;

__attribute__((used)) static inline
void stats_add_sample(struct stats *stats, s8 sample)
{
 s8 min, max;
 s16 sigma;
 unsigned samples = atomic_read(&stats->samples);
 if (samples == 0) {
  min = 127;
  max = -128;
  sigma = 0;
 } else {
  min = stats->min;
  max = stats->max;
  sigma = stats->sigma;
 }

 if (sample < min)
  min = sample;
 else if (sample > max)
  max = sample;
 sigma += sample;

 stats->min = min;
 stats->max = max;
 stats->sigma = sigma;
 if (atomic_add_return(1, &stats->samples) > 255) {

  stats->sigma = sigma / 256;
  atomic_set(&stats->samples, 1);
 }
}
