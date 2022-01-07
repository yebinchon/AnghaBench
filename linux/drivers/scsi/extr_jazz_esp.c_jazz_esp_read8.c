
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile u8 ;
struct esp {scalar_t__ regs; } ;



__attribute__((used)) static u8 jazz_esp_read8(struct esp *esp, unsigned long reg)
{
 return *(volatile u8 *)(esp->regs + reg);
}
