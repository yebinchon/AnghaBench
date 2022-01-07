
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smtcfb_info {int dummy; } ;


 int * smtc_regbaseaddress ;

__attribute__((used)) static void smtc_unmap_mmio(struct smtcfb_info *sfb)
{
 if (sfb && smtc_regbaseaddress)
  smtc_regbaseaddress = ((void*)0);
}
