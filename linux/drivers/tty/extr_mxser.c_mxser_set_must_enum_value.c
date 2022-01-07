
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MOXA_MUST_EFR_BANK2 ;
 int MOXA_MUST_EFR_BANK_MASK ;
 scalar_t__ MOXA_MUST_EFR_REGISTER ;
 int MOXA_MUST_ENTER_ENCHANCE ;
 scalar_t__ MOXA_MUST_ENUM_REGISTER ;
 scalar_t__ UART_LCR ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void mxser_set_must_enum_value(unsigned long baseio, u8 value)
{
 u8 oldlcr;
 u8 efr;

 oldlcr = inb(baseio + UART_LCR);
 outb(MOXA_MUST_ENTER_ENCHANCE, baseio + UART_LCR);

 efr = inb(baseio + MOXA_MUST_EFR_REGISTER);
 efr &= ~MOXA_MUST_EFR_BANK_MASK;
 efr |= MOXA_MUST_EFR_BANK2;

 outb(efr, baseio + MOXA_MUST_EFR_REGISTER);
 outb(value, baseio + MOXA_MUST_ENUM_REGISTER);
 outb(oldlcr, baseio + UART_LCR);
}
