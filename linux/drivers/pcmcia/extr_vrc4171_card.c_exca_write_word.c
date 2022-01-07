
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int CARD_CONTROLLER_DATA ;
 int CARD_CONTROLLER_INDEX ;
 int CARD_SLOTB ;
 int CARD_SLOTB_OFFSET ;
 int outb (int,int ) ;

__attribute__((used)) static inline uint16_t exca_write_word(int slot, uint8_t index, uint16_t data)
{
 if (slot == CARD_SLOTB)
  index += CARD_SLOTB_OFFSET;

 outb(index++, CARD_CONTROLLER_INDEX);
 outb(data, CARD_CONTROLLER_DATA);

 outb(index, CARD_CONTROLLER_INDEX);
 outb((uint8_t)(data >> 8), CARD_CONTROLLER_DATA);

 return data;
}
