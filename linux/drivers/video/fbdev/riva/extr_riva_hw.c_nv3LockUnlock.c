
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int PVIO; } ;
typedef TYPE_1__ RIVA_HW_INST ;


 int VGA_WR08 (int ,int,int) ;
 int vgaLockUnlock (TYPE_1__*,int) ;

__attribute__((used)) static void nv3LockUnlock
(
    RIVA_HW_INST *chip,
    int Lock
)
{
    VGA_WR08(chip->PVIO, 0x3C4, 0x06);
    VGA_WR08(chip->PVIO, 0x3C5, Lock ? 0x99 : 0x57);
    vgaLockUnlock(chip, Lock);
}
