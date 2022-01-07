
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_firmware_feature {int (* feature_status ) (struct pqi_ctrl_info*,struct pqi_firmware_feature*) ;} ;
struct pqi_ctrl_info {int dummy; } ;


 int stub1 (struct pqi_ctrl_info*,struct pqi_firmware_feature*) ;

__attribute__((used)) static inline void pqi_firmware_feature_update(struct pqi_ctrl_info *ctrl_info,
 struct pqi_firmware_feature *firmware_feature)
{
 if (firmware_feature->feature_status)
  firmware_feature->feature_status(ctrl_info, firmware_feature);
}
