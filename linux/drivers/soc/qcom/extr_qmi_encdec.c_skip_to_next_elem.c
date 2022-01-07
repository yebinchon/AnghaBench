
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct qmi_elem_info {scalar_t__ tlv_type; } ;



__attribute__((used)) static struct qmi_elem_info *skip_to_next_elem(struct qmi_elem_info *ei_array,
            int level)
{
 struct qmi_elem_info *temp_ei = ei_array;
 u8 tlv_type;

 if (level > 1) {
  temp_ei = temp_ei + 1;
 } else {
  do {
   tlv_type = temp_ei->tlv_type;
   temp_ei = temp_ei + 1;
  } while (tlv_type == temp_ei->tlv_type);
 }

 return temp_ei;
}
