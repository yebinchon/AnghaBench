
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic_io_stats {int num_ios; int max_active; int active; } ;
struct snic_stats {struct snic_io_stats io; } ;


 int atomic64_inc (int *) ;
 int atomic64_read (int *) ;
 int atomic64_set (int *,int) ;

__attribute__((used)) static inline void
snic_stats_update_active_ios(struct snic_stats *s_stats)
{
 struct snic_io_stats *io = &s_stats->io;
 int nr_active_ios;

 nr_active_ios = atomic64_read(&io->active);
 if (atomic64_read(&io->max_active) < nr_active_ios)
  atomic64_set(&io->max_active, nr_active_ios);

 atomic64_inc(&io->num_ios);
}
