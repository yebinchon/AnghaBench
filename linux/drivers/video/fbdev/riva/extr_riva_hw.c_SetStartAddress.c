
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PCRTC; } ;
typedef TYPE_1__ RIVA_HW_INST ;


 int NV_WR32 (int ,int,unsigned int) ;

__attribute__((used)) static void SetStartAddress
(
    RIVA_HW_INST *chip,
    unsigned start
)
{
    NV_WR32(chip->PCRTC, 0x800, start);
}
