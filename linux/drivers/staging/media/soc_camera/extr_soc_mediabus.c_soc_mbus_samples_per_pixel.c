
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_mbus_pixelfmt {int packing; } ;


 int EINVAL ;
int soc_mbus_samples_per_pixel(const struct soc_mbus_pixelfmt *mf,
   unsigned int *numerator, unsigned int *denominator)
{
 switch (mf->packing) {
 case 129:
 case 131:
  *numerator = 1;
  *denominator = 1;
  return 0;
 case 130:
  *numerator = 1;
  *denominator = 1;
  return 0;
 case 133:
 case 132:
  *numerator = 2;
  *denominator = 1;
  return 0;
 case 134:
  *numerator = 3;
  *denominator = 2;
  return 0;
 case 128:
  *numerator = 0;
  *denominator = 1;
  return 0;
 }
 return -EINVAL;
}
