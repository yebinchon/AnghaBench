
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_perms {int ioctlm; } ;


 int AP_IOCTLS ;
 int DBF_WARN ;
 int EPERM ;
 int ZCRYPT_DBF (int ,char*,int,int) ;
 unsigned int _IOC_NRMASK ;
 unsigned int _IOC_NRSHIFT ;
 scalar_t__ test_bit_inv (int,int ) ;

__attribute__((used)) static inline int zcrypt_check_ioctl(struct ap_perms *perms,
         unsigned int cmd)
{
 int rc = -EPERM;
 int ioctlnr = (cmd & _IOC_NRMASK) >> _IOC_NRSHIFT;

 if (ioctlnr > 0 && ioctlnr < AP_IOCTLS) {
  if (test_bit_inv(ioctlnr, perms->ioctlm))
   rc = 0;
 }

 if (rc)
  ZCRYPT_DBF(DBF_WARN,
      "ioctl check failed: ioctlnr=0x%04x rc=%d\n",
      ioctlnr, rc);

 return rc;
}
