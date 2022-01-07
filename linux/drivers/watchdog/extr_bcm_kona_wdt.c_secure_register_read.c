
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_kona_wdt {int base; unsigned int busy_count; } ;


 int ETIMEDOUT ;
 unsigned int SECWDOG_MAX_TRY ;
 int SECWDOG_RESERVED_MASK ;
 int SECWDOG_WD_LOAD_FLAG ;
 int readl_relaxed (int) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int secure_register_read(struct bcm_kona_wdt *wdt, uint32_t offset)
{
 uint32_t val;
 unsigned count = 0;






 do {
  if (unlikely(count > 1))
   udelay(5);
  val = readl_relaxed(wdt->base + offset);
  count++;
 } while ((val & SECWDOG_WD_LOAD_FLAG) && count < SECWDOG_MAX_TRY);
 if (val & SECWDOG_WD_LOAD_FLAG)
  return -ETIMEDOUT;


 val &= SECWDOG_RESERVED_MASK;

 return val;
}
