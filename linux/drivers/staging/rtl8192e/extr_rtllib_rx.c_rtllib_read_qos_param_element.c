
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ elementID; scalar_t__ length; int qui; } ;
struct rtllib_qos_parameter_info {TYPE_1__ info_element; } ;
struct rtllib_info_element {scalar_t__ id; scalar_t__ len; int data; } ;


 scalar_t__ QOS_ELEMENT_ID ;
 int QOS_OUI_PARAM_SUB_TYPE ;
 int memcpy (int ,int ,scalar_t__) ;
 int rtllib_verify_qos_info (TYPE_1__*,int ) ;

__attribute__((used)) static int rtllib_read_qos_param_element(struct rtllib_qos_parameter_info
       *element_param,
      struct rtllib_info_element
       *info_element)
{
 int ret = 0;
 u16 size = sizeof(struct rtllib_qos_parameter_info) - 2;

 if ((info_element == ((void*)0)) || (element_param == ((void*)0)))
  return -1;

 if (info_element->id == QOS_ELEMENT_ID && info_element->len == size) {
  memcpy(element_param->info_element.qui, info_element->data,
         info_element->len);
  element_param->info_element.elementID = info_element->id;
  element_param->info_element.length = info_element->len;
 } else
  ret = -1;
 if (ret == 0)
  ret = rtllib_verify_qos_info(&element_param->info_element,
      QOS_OUI_PARAM_SUB_TYPE);
 return ret;
}
