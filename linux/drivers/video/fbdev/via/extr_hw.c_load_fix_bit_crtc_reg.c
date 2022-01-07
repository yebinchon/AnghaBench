
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* chip_info; } ;
struct TYPE_3__ {scalar_t__ gfx_chip_name; scalar_t__ gfx_chip_revision; } ;


 scalar_t__ BIT0 ;
 scalar_t__ BIT1 ;
 scalar_t__ BIT2 ;
 scalar_t__ BIT3 ;
 scalar_t__ BIT4 ;
 scalar_t__ BIT7 ;
 scalar_t__ CLE266_REVISION_AX ;
 int CR03 ;
 int CR33 ;
 int CR35 ;
 int SR1A ;
 scalar_t__ UNICHROME_CLE266 ;
 scalar_t__ UNICHROME_K800 ;
 scalar_t__ UNICHROME_K8M890 ;
 int VIACR ;
 int VIASR ;
 int viafb_lock_crt () ;
 int viafb_unlock_crt () ;
 int viafb_write_reg_mask (int ,int ,int,scalar_t__) ;
 TYPE_2__* viaparinfo ;

__attribute__((used)) static void load_fix_bit_crtc_reg(void)
{
 viafb_unlock_crt();


 viafb_write_reg_mask(CR03, VIACR, 0x80, BIT7);

 viafb_write_reg_mask(CR35, VIACR, 0x10, BIT4);

 viafb_write_reg_mask(CR33, VIACR, 0x06, BIT0 + BIT1 + BIT2);


 viafb_lock_crt();


 if ((viaparinfo->chip_info->gfx_chip_name == UNICHROME_K800)
  || (viaparinfo->chip_info->gfx_chip_name == UNICHROME_K8M890))
  viafb_write_reg_mask(CR33, VIACR, 0x08, BIT3);
 if ((viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266)
     && (viaparinfo->chip_info->gfx_chip_revision == CLE266_REVISION_AX))
  viafb_write_reg_mask(SR1A, VIASR, 0x02, BIT1);

}
