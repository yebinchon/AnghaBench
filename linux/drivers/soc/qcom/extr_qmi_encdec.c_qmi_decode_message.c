
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_header {int dummy; } ;
struct qmi_elem_info {int dummy; } ;


 int EINVAL ;
 int qmi_decode (struct qmi_elem_info*,void*,void const*,size_t,int) ;

int qmi_decode_message(const void *buf, size_t len,
         struct qmi_elem_info *ei, void *c_struct)
{
 if (!ei)
  return -EINVAL;

 if (!c_struct || !buf || !len)
  return -EINVAL;

 return qmi_decode(ei, c_struct, buf + sizeof(struct qmi_header),
     len - sizeof(struct qmi_header), 1);
}
