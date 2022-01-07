
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int block_requests; } ;



__attribute__((used)) static inline bool pqi_ctrl_blocked(struct pqi_ctrl_info *ctrl_info)
{
 return ctrl_info->block_requests;
}
