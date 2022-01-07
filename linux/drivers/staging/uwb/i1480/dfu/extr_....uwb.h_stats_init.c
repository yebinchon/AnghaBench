
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {int samples; } ;


 int atomic_set (int *,int ) ;
 int wmb () ;

__attribute__((used)) static inline
void stats_init(struct stats *stats)
{
 atomic_set(&stats->samples, 0);
 wmb();
}
