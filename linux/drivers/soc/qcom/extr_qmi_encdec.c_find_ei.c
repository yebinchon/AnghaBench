
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct qmi_elem_info {scalar_t__ data_type; scalar_t__ tlv_type; } ;


 scalar_t__ QMI_EOTI ;

__attribute__((used)) static struct qmi_elem_info *find_ei(struct qmi_elem_info *ei_array,
         u32 type)
{
 struct qmi_elem_info *temp_ei = ei_array;

 while (temp_ei->data_type != QMI_EOTI) {
  if (temp_ei->tlv_type == (u8)type)
   return temp_ei;
  temp_ei = temp_ei + 1;
 }

 return ((void*)0);
}
