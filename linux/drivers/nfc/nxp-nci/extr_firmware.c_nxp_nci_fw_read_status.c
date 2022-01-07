
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EADDRNOTAVAIL ;
 int EALREADY ;
 int EHWPOISON ;
 int EINVAL ;
 int EIO ;
 int EKEYREJECTED ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ENOKEY ;
 int EPROTO ;
__attribute__((used)) static int nxp_nci_fw_read_status(u8 stat)
{
 switch (stat) {
 case 135:
  return 0;
 case 137:
  return -EINVAL;
 case 128:
  return -EINVAL;
 case 141:
  return -EMSGSIZE;
 case 140:
  return -EADDRNOTAVAIL;
 case 139:
  return -ENOBUFS;
 case 136:
  return -ENOKEY;
 case 129:
  return -EKEYREJECTED;
 case 138:
  return -EALREADY;
 case 131:
  return -EPROTO;
 case 130:
  return -EHWPOISON;
 case 134:
  return 0;
 case 132:
  return 0;
 case 133:
  return -EINVAL;
 default:
  return -EIO;
 }
}
