
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* chip_info; } ;
struct TYPE_4__ {scalar_t__ output_interface; } ;
struct TYPE_5__ {TYPE_1__ tmds_chip_info; } ;


 int CRD2 ;
 scalar_t__ INTERFACE_TMDS ;
 int VIACR ;
 int viafb_read_reg (int ,int ) ;
 int viafb_write_reg (int ,int ,int) ;
 TYPE_3__* viaparinfo ;

void viafb_dvi_disable(void)
{
 if (viaparinfo->chip_info->
  tmds_chip_info.output_interface == INTERFACE_TMDS)

  viafb_write_reg(CRD2, VIACR,
  viafb_read_reg(VIACR, CRD2) | 0x08);
}
