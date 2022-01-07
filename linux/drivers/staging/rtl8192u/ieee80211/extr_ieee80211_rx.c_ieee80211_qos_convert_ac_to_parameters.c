
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_qos_parameters {int* aifs; int* flag; int * tx_op_limit; void** cw_max; void** cw_min; } ;
struct ieee80211_qos_parameter_info {struct ieee80211_qos_ac_parameter* ac_params_record; } ;
struct ieee80211_qos_ac_parameter {int aci_aifsn; int ecw_min_max; int tx_op_limit; } ;


 int QOS_QUEUE_NUM ;
 void* cpu_to_le16 (int) ;

__attribute__((used)) static int ieee80211_qos_convert_ac_to_parameters(
  struct ieee80211_qos_parameter_info *param_elm,
  struct ieee80211_qos_parameters *qos_param)
{
 int i;
 struct ieee80211_qos_ac_parameter *ac_params;
 u8 aci;



 for (i = 0; i < QOS_QUEUE_NUM; i++) {
  ac_params = &(param_elm->ac_params_record[i]);

  aci = (ac_params->aci_aifsn & 0x60) >> 5;

  if (aci >= QOS_QUEUE_NUM)
   continue;
  qos_param->aifs[aci] = (ac_params->aci_aifsn) & 0x0f;


  qos_param->aifs[aci] = (qos_param->aifs[aci] < 2) ? 2 : qos_param->aifs[aci];

  qos_param->cw_min[aci] =
      cpu_to_le16(ac_params->ecw_min_max & 0x0F);

  qos_param->cw_max[aci] =
      cpu_to_le16((ac_params->ecw_min_max & 0xF0) >> 4);

  qos_param->flag[aci] =
      (ac_params->aci_aifsn & 0x10) ? 0x01 : 0x00;
  qos_param->tx_op_limit[aci] = ac_params->tx_op_limit;
 }
 return 0;
}
