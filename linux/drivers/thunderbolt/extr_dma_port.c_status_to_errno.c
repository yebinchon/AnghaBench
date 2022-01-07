
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EACCES ;
 int EINVAL ;
 int EIO ;



 int MAIL_OUT_STATUS_MASK ;

__attribute__((used)) static int status_to_errno(u32 status)
{
 switch (status & MAIL_OUT_STATUS_MASK) {
 case 130:
  return 0;
 case 128:
  return -EINVAL;
 case 129:
  return -EACCES;
 }

 return -EIO;
}
