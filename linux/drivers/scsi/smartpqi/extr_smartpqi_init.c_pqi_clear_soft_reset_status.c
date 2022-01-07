
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pqi_ctrl_info {int soft_reset_status; } ;


 int pqi_read_soft_reset_status (struct pqi_ctrl_info*) ;
 int writeb (int ,int ) ;

__attribute__((used)) static inline void pqi_clear_soft_reset_status(struct pqi_ctrl_info *ctrl_info,
      u8 clear)
{
 u8 status;

 if (!ctrl_info->soft_reset_status)
  return;

 status = pqi_read_soft_reset_status(ctrl_info);
 status &= ~clear;
 writeb(status, ctrl_info->soft_reset_status);
}
