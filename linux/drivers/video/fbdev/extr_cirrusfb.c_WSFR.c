
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cirrusfb_info {unsigned char SFR; int * regbase; } ;


 int assert (int ) ;
 int z_writeb (unsigned char,int *) ;

__attribute__((used)) static void WSFR(struct cirrusfb_info *cinfo, unsigned char val)
{





}
