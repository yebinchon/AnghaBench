
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urdev {int class; } ;




 int EOPNOTSUPP ;
 int verify_uri_device (struct urdev*) ;

__attribute__((used)) static int verify_device(struct urdev *urd)
{
 switch (urd->class) {
 case 128:
  return 0;
 case 129:
  return verify_uri_device(urd);
 default:
  return -EOPNOTSUPP;
 }
}
