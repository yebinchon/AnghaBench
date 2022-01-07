
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ica_rsa_modexpo_crt {int inputdatalength; } ;


 int CRT_1K ;
 int CRT_2K ;
 int CRT_4K ;
 unsigned int EINVAL ;

unsigned int get_rsa_crt_fc(struct ica_rsa_modexpo_crt *crt, int *fcode)
{

 if (!crt->inputdatalength)
  return -EINVAL;

 if (crt->inputdatalength <= 128)
  *fcode = CRT_1K;
 else if (crt->inputdatalength <= 256)
  *fcode = CRT_2K;
 else
  *fcode = CRT_4K;

 return 0;
}
