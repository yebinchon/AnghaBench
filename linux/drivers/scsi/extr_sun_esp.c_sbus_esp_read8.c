
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct esp {scalar_t__ regs; } ;


 int sbus_readb (scalar_t__) ;

__attribute__((used)) static u8 sbus_esp_read8(struct esp *esp, unsigned long reg)
{
 return sbus_readb(esp->regs + (reg * 4UL));
}
