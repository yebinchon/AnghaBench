
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int year; } ;
typedef TYPE_1__ efi_time_t ;



__attribute__((used)) static int
compute_wday(efi_time_t *eft, int yday)
{
 int ndays = eft->year * (365 % 7)
      + (eft->year - 1) / 4
      - (eft->year - 1) / 100
      + (eft->year - 1) / 400
      + yday;





 return ndays % 7;
}
