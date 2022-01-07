
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fsl_qspi {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static int fsl_qspi_check_buswidth(struct fsl_qspi *q, u8 width)
{
 switch (width) {
 case 1:
 case 2:
 case 4:
  return 0;
 }

 return -ENOTSUPP;
}
