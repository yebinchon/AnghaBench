
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* CurrentState; int PCIO; } ;
struct TYPE_4__ {int cursor1; } ;
typedef TYPE_2__ RIVA_HW_INST ;


 int VGA_WR08 (int ,int,int) ;

__attribute__((used)) static int ShowHideCursor
(
    RIVA_HW_INST *chip,
    int ShowHide
)
{
    int cursor;
    cursor = chip->CurrentState->cursor1;
    chip->CurrentState->cursor1 = (chip->CurrentState->cursor1 & 0xFE) |
                                  (ShowHide & 0x01);
    VGA_WR08(chip->PCIO, 0x3D4, 0x31);
    VGA_WR08(chip->PCIO, 0x3D5, chip->CurrentState->cursor1);
    return (cursor & 0x01);
}
