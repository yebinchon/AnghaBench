
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int num_busy_threads; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void pqi_ctrl_busy(struct pqi_ctrl_info *ctrl_info)
{
 atomic_inc(&ctrl_info->num_busy_threads);
}
