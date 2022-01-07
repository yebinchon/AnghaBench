
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nxp_fspi {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static int nxp_fspi_check_buswidth(struct nxp_fspi *f, u8 width)
{
 switch (width) {
 case 1:
 case 2:
 case 4:
 case 8:
  return 0;
 }

 return -ENOTSUPP;
}
