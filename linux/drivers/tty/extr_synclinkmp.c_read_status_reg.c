
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ statctrl_base; } ;
typedef TYPE_1__ SLMP_INFO ;



__attribute__((used)) static unsigned char read_status_reg(SLMP_INFO * info)
{
 unsigned char *RegAddr = (unsigned char *)info->statctrl_base;
 return *RegAddr;
}
