
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urdev {int class; } ;




 int EOPNOTSUPP ;
 int get_uri_file_reclen (struct urdev*) ;

__attribute__((used)) static int get_file_reclen(struct urdev *urd)
{
 switch (urd->class) {
 case 128:
  return 0;
 case 129:
  return get_uri_file_reclen(urd);
 default:
  return -EOPNOTSUPP;
 }
}
