
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMOS_READ (unsigned int) ;
 scalar_t__ NVRAM_OFFSET ;
 scalar_t__ can_bank2 ;
 int cmos_read_bank2 (unsigned int) ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int cmos_nvram_read(void *priv, unsigned int off, void *val,
      size_t count)
{
 unsigned char *buf = val;
 int retval;

 off += NVRAM_OFFSET;
 spin_lock_irq(&rtc_lock);
 for (retval = 0; count; count--, off++, retval++) {
  if (off < 128)
   *buf++ = CMOS_READ(off);
  else if (can_bank2)
   *buf++ = cmos_read_bank2(off);
  else
   break;
 }
 spin_unlock_irq(&rtc_lock);

 return retval;
}
