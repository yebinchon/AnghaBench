
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum qlink_cmd_result { ____Placeholder_qlink_cmd_result } qlink_cmd_result ;


 int EADDRINUSE ;
 int EADDRNOTAVAIL ;
 int EALREADY ;
 int EBUSY ;
 int EFAULT ;
 int EINVAL ;
 int ENOENT ;
 int ENOTSUPP ;
__attribute__((used)) static int qtnf_cmd_resp_result_decode(enum qlink_cmd_result qcode)
{
 switch (qcode) {
 case 128:
  return 0;
 case 129:
  return -EINVAL;
 case 130:
  return -ENOTSUPP;
 case 131:
  return -ENOENT;
 case 133:
  return -EALREADY;
 case 135:
  return -EADDRINUSE;
 case 134:
  return -EADDRNOTAVAIL;
 case 132:
  return -EBUSY;
 default:
  return -EFAULT;
 }
}
