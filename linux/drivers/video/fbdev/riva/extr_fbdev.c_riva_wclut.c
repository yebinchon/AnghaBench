
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PDIO; } ;
typedef TYPE_1__ RIVA_HW_INST ;


 int VGA_WR08 (int ,int,unsigned char) ;

__attribute__((used)) static void riva_wclut(RIVA_HW_INST *chip,
         unsigned char regnum, unsigned char red,
         unsigned char green, unsigned char blue)
{
 VGA_WR08(chip->PDIO, 0x3c8, regnum);
 VGA_WR08(chip->PDIO, 0x3c9, red);
 VGA_WR08(chip->PDIO, 0x3c9, green);
 VGA_WR08(chip->PDIO, 0x3c9, blue);
}
