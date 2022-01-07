
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int num_blocked_threads; int num_busy_threads; } ;


 scalar_t__ atomic_read (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline void pqi_ctrl_wait_until_quiesced(struct pqi_ctrl_info *ctrl_info)
{
 while (atomic_read(&ctrl_info->num_busy_threads) >
  atomic_read(&ctrl_info->num_blocked_threads))
  usleep_range(1000, 2000);
}
