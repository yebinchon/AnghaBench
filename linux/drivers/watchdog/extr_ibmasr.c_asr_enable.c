
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ASMTYPE_TOPAZ ;
 unsigned char TOPAZ_ASR_DISABLE ;
 unsigned char TOPAZ_ASR_TOGGLE ;
 int __asr_toggle () ;
 unsigned char asr_disable_mask ;
 int asr_lock ;
 int asr_read_addr ;
 scalar_t__ asr_type ;
 int asr_write_addr ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void asr_enable(void)
{
 unsigned char reg;

 spin_lock(&asr_lock);
 if (asr_type == ASMTYPE_TOPAZ) {

  reg = inb(asr_read_addr);
  outb(reg & ~(TOPAZ_ASR_TOGGLE | TOPAZ_ASR_DISABLE),
       asr_read_addr);
 } else {




  __asr_toggle();

  reg = inb(asr_read_addr);
  outb(reg & ~asr_disable_mask, asr_write_addr);
 }
 reg = inb(asr_read_addr);
 spin_unlock(&asr_lock);
}
