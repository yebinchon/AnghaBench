
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int EOPNOTSUPP ;






__attribute__((used)) static int qeth_l3_arp_makerc(u16 rc)
{
 switch (rc) {
 case 132:
  return 0;
 case 131:
 case 129:
  return -EOPNOTSUPP;
 case 130:
  return -EINVAL;
 case 128:
  return -ENOENT;
 default:
  return -EIO;
 }
}
