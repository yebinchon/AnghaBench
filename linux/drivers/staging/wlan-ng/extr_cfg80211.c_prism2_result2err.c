
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EIO ;
 int EOPNOTSUPP ;




__attribute__((used)) static int prism2_result2err(int prism2_result)
{
 int err = 0;

 switch (prism2_result) {
 case 129:
  err = -EINVAL;
  break;
 case 130:
  err = -EIO;
  break;
 case 128:
  err = -EOPNOTSUPP;
  break;
 default:
  err = 0;
  break;
 }

 return err;
}
