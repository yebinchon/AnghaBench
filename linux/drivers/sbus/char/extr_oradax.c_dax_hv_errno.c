
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int EPERM ;






__attribute__((used)) static char *dax_hv_errno(unsigned long hv_ret, int *ret)
{
 switch (hv_ret) {
 case 132:
  *ret = -EFAULT;
  return "HV_EBADALIGN";
 case 129:
  *ret = -EFAULT;
  return "HV_ENORADDR";
 case 131:
  *ret = -EINVAL;
  return "HV_EINVAL";
 case 128:
  *ret = -EAGAIN;
  return "HV_EWOULDBLOCK";
 case 130:
  *ret = -EPERM;
  return "HV_ENOACCESS";
 default:
  break;
 }

 *ret = -EIO;
 return "UNKNOWN";
}
