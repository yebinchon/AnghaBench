
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ elementID; scalar_t__ length; int qui; } ;
struct ieee80211_qos_parameter_info {TYPE_1__ info_element; } ;
struct ieee80211_info_element {scalar_t__ id; scalar_t__ len; int data; } ;


 scalar_t__ QOS_ELEMENT_ID ;
 int QOS_OUI_PARAM_SUB_TYPE ;
 int ieee80211_verify_qos_info (TYPE_1__*,int ) ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static int ieee80211_read_qos_param_element(struct ieee80211_qos_parameter_info
         *element_param, struct ieee80211_info_element
         *info_element)
{
 int ret = 0;
 u16 size = sizeof(struct ieee80211_qos_parameter_info) - 2;

 if (!info_element || !element_param)
  return -1;

 if (info_element->id == QOS_ELEMENT_ID && info_element->len == size) {
  memcpy(element_param->info_element.qui, info_element->data,
         info_element->len);
  element_param->info_element.elementID = info_element->id;
  element_param->info_element.length = info_element->len;
 } else
  ret = -1;
 if (ret == 0)
  ret = ieee80211_verify_qos_info(&element_param->info_element,
      QOS_OUI_PARAM_SUB_TYPE);
 return ret;
}
