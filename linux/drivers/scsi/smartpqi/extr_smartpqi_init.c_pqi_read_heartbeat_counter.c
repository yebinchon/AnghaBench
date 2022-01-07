
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pqi_ctrl_info {int heartbeat_counter; } ;


 int readl (int ) ;

__attribute__((used)) static inline u32 pqi_read_heartbeat_counter(struct pqi_ctrl_info *ctrl_info)
{
 if (!ctrl_info->heartbeat_counter)
  return 0;

 return readl(ctrl_info->heartbeat_counter);
}
