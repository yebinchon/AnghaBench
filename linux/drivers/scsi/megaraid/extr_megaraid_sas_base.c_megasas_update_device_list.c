
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megasas_instance {scalar_t__ requestorId; scalar_t__ enable_fw_dev_list; } ;


 int DCMD_SUCCESS ;
 int MR_LD_QUERY_TYPE_EXPOSED_TO_HOST ;
 int SCAN_PD_CHANNEL ;
 int SCAN_VD_CHANNEL ;
 scalar_t__ megasas_get_ld_vf_affiliation (struct megasas_instance*,int ) ;
 int megasas_get_pd_list (struct megasas_instance*) ;
 int megasas_host_device_list_query (struct megasas_instance*,int) ;
 int megasas_ld_list_query (struct megasas_instance*,int ) ;

__attribute__((used)) static
int megasas_update_device_list(struct megasas_instance *instance,
          int event_type)
{
 int dcmd_ret = DCMD_SUCCESS;

 if (instance->enable_fw_dev_list) {
  dcmd_ret = megasas_host_device_list_query(instance, 0);
  if (dcmd_ret != DCMD_SUCCESS)
   goto out;
 } else {
  if (event_type & SCAN_PD_CHANNEL) {
   dcmd_ret = megasas_get_pd_list(instance);

   if (dcmd_ret != DCMD_SUCCESS)
    goto out;
  }

  if (event_type & SCAN_VD_CHANNEL) {
   if (!instance->requestorId ||
       (instance->requestorId &&
        megasas_get_ld_vf_affiliation(instance, 0))) {
    dcmd_ret = megasas_ld_list_query(instance,
      MR_LD_QUERY_TYPE_EXPOSED_TO_HOST);
    if (dcmd_ret != DCMD_SUCCESS)
     goto out;
   }
  }
 }

out:
 return dcmd_ret;
}
