
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmos_rtc {unsigned int day_alrm; unsigned int mon_alrm; unsigned int century; } ;


 int CMOS_WRITE (int ,unsigned int) ;
 scalar_t__ NVRAM_OFFSET ;
 scalar_t__ can_bank2 ;
 int cmos_write_bank2 (int ,unsigned int) ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int cmos_nvram_write(void *priv, unsigned int off, void *val,
       size_t count)
{
 struct cmos_rtc *cmos = priv;
 unsigned char *buf = val;
 int retval;






 off += NVRAM_OFFSET;
 spin_lock_irq(&rtc_lock);
 for (retval = 0; count; count--, off++, retval++) {

  if (off == cmos->day_alrm
    || off == cmos->mon_alrm
    || off == cmos->century)
   buf++;
  else if (off < 128)
   CMOS_WRITE(*buf++, off);
  else if (can_bank2)
   cmos_write_bank2(*buf++, off);
  else
   break;
 }
 spin_unlock_irq(&rtc_lock);

 return retval;
}
