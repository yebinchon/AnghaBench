
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct snic_req_info {scalar_t__ start_time; } ;
struct TYPE_3__ {int max_time; } ;
struct TYPE_4__ {TYPE_1__ io; } ;
struct snic {TYPE_2__ s_stats; } ;


 scalar_t__ atomic64_read (int *) ;
 int atomic64_set (int *,scalar_t__) ;
 scalar_t__ jiffies ;

void
snic_calc_io_process_time(struct snic *snic, struct snic_req_info *rqi)
{
 u64 duration;

 duration = jiffies - rqi->start_time;

 if (duration > atomic64_read(&snic->s_stats.io.max_time))
  atomic64_set(&snic->s_stats.io.max_time, duration);
}
