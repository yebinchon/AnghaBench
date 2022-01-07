
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;
struct bmic_identify_controller {int dummy; } ;


 int BMIC_IDENTIFY_CONTROLLER ;
 int pqi_send_ctrl_raid_request (struct pqi_ctrl_info*,int ,struct bmic_identify_controller*,int) ;

__attribute__((used)) static inline int pqi_identify_controller(struct pqi_ctrl_info *ctrl_info,
  struct bmic_identify_controller *buffer)
{
 return pqi_send_ctrl_raid_request(ctrl_info, BMIC_IDENTIFY_CONTROLLER,
   buffer, sizeof(*buffer));
}
