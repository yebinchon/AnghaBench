
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;


 int kfree (struct pqi_ctrl_info*) ;

__attribute__((used)) static inline void pqi_free_ctrl_info(struct pqi_ctrl_info *ctrl_info)
{
 kfree(ctrl_info);
}
