
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ica_rsa_modexpo {int inputdatalength; } ;


 unsigned int EINVAL ;
 int MEX_1K ;
 int MEX_2K ;
 int MEX_4K ;

unsigned int get_rsa_modex_fc(struct ica_rsa_modexpo *mex, int *fcode)
{

 if (!mex->inputdatalength)
  return -EINVAL;

 if (mex->inputdatalength <= 128)
  *fcode = MEX_1K;
 else if (mex->inputdatalength <= 256)
  *fcode = MEX_2K;
 else
  *fcode = MEX_4K;

 return 0;
}
