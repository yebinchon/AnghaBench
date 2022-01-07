
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int in_ofa; } ;



__attribute__((used)) static inline void pqi_ctrl_ofa_done(struct pqi_ctrl_info *ctrl_info)
{
 ctrl_info->in_ofa = 0;
}
