
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;


 int pqi_configure_events (struct pqi_ctrl_info*,int) ;

__attribute__((used)) static inline int pqi_enable_events(struct pqi_ctrl_info *ctrl_info)
{
 return pqi_configure_events(ctrl_info, 1);
}
