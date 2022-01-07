
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int num_busy_threads; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static inline void pqi_ctrl_unbusy(struct pqi_ctrl_info *ctrl_info)
{
 atomic_dec(&ctrl_info->num_busy_threads);
}
