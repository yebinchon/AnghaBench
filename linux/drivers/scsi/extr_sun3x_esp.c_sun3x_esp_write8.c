
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct esp {scalar_t__ regs; } ;


 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void sun3x_esp_write8(struct esp *esp, u8 val, unsigned long reg)
{
 writeb(val, esp->regs + (reg * 4UL));
}
