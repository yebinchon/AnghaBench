
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_ctrl_info {scalar_t__ max_iq_element_length; scalar_t__ max_oq_element_length; scalar_t__ max_inbound_iu_length_per_firmware; TYPE_1__* pci_dev; scalar_t__ outbound_spanning_supported; int inbound_spanning_supported; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 scalar_t__ PQI_OPERATIONAL_IQ_ELEMENT_LENGTH ;
 scalar_t__ PQI_OPERATIONAL_OQ_ELEMENT_LENGTH ;
 int dev_err (int *,char*,...) ;

__attribute__((used)) static int pqi_validate_device_capability(struct pqi_ctrl_info *ctrl_info)
{
 if (ctrl_info->max_iq_element_length <
  PQI_OPERATIONAL_IQ_ELEMENT_LENGTH) {
  dev_err(&ctrl_info->pci_dev->dev,
   "max. inbound queue element length of %d is less than the required length of %d\n",
   ctrl_info->max_iq_element_length,
   PQI_OPERATIONAL_IQ_ELEMENT_LENGTH);
  return -EINVAL;
 }

 if (ctrl_info->max_oq_element_length <
  PQI_OPERATIONAL_OQ_ELEMENT_LENGTH) {
  dev_err(&ctrl_info->pci_dev->dev,
   "max. outbound queue element length of %d is less than the required length of %d\n",
   ctrl_info->max_oq_element_length,
   PQI_OPERATIONAL_OQ_ELEMENT_LENGTH);
  return -EINVAL;
 }

 if (ctrl_info->max_inbound_iu_length_per_firmware <
  PQI_OPERATIONAL_IQ_ELEMENT_LENGTH) {
  dev_err(&ctrl_info->pci_dev->dev,
   "max. inbound IU length of %u is less than the min. required length of %d\n",
   ctrl_info->max_inbound_iu_length_per_firmware,
   PQI_OPERATIONAL_IQ_ELEMENT_LENGTH);
  return -EINVAL;
 }

 if (!ctrl_info->inbound_spanning_supported) {
  dev_err(&ctrl_info->pci_dev->dev,
   "the controller does not support inbound spanning\n");
  return -EINVAL;
 }

 if (ctrl_info->outbound_spanning_supported) {
  dev_err(&ctrl_info->pci_dev->dev,
   "the controller supports outbound spanning but this driver does not\n");
  return -EINVAL;
 }

 return 0;
}
