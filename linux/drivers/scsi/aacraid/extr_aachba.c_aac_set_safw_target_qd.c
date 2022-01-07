
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_dev {TYPE_1__** hba_map; } ;
struct aac_ciss_identify_pd {int current_queue_depth_limit; } ;
struct TYPE_2__ {scalar_t__ devtype; int qd_limit; struct aac_ciss_identify_pd* safw_identify_resp; } ;


 scalar_t__ AAC_DEVTYPE_NATIVE_RAW ;

__attribute__((used)) static void aac_set_safw_target_qd(struct aac_dev *dev, int bus, int target)
{

 struct aac_ciss_identify_pd *identify_resp;

 if (dev->hba_map[bus][target].devtype != AAC_DEVTYPE_NATIVE_RAW)
  return;

 identify_resp = dev->hba_map[bus][target].safw_identify_resp;
 if (identify_resp == ((void*)0)) {
  dev->hba_map[bus][target].qd_limit = 32;
  return;
 }

 if (identify_resp->current_queue_depth_limit <= 0 ||
  identify_resp->current_queue_depth_limit > 255)
  dev->hba_map[bus][target].qd_limit = 32;
 else
  dev->hba_map[bus][target].qd_limit =
   identify_resp->current_queue_depth_limit;
}
