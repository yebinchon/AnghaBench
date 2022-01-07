
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int dummy; } ;


 int EINVAL ;
 int rbsp_write_uev (struct rbsp*,unsigned int*) ;

__attribute__((used)) static int rbsp_write_sev(struct rbsp *rbsp, int *value)
{
 unsigned int tmp;

 if (!value)
  return -EINVAL;

 if (*value > 0)
  tmp = (2 * (*value)) | 1;
 else
  tmp = -2 * (*value);

 return rbsp_write_uev(rbsp, &tmp);
}
