
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U008 ;
struct TYPE_3__ {int PCIO; } ;
typedef TYPE_1__ RIVA_HW_INST ;


 int VGA_RD08 (int ,int) ;
 int VGA_WR08 (int ,int,int) ;

__attribute__((used)) static void vgaLockUnlock
(
    RIVA_HW_INST *chip,
    int Lock
)
{
    U008 cr11;
    VGA_WR08(chip->PCIO, 0x3D4, 0x11);
    cr11 = VGA_RD08(chip->PCIO, 0x3D5);
    if(Lock) cr11 |= 0x80;
    else cr11 &= ~0x80;
    VGA_WR08(chip->PCIO, 0x3D5, cr11);
}
