
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath79_spi {unsigned int rrw_delay; } ;


 int ndelay (unsigned int) ;

__attribute__((used)) static inline void ath79_spi_delay(struct ath79_spi *sp, unsigned int nsecs)
{
 if (nsecs > sp->rrw_delay)
  ndelay(nsecs - sp->rrw_delay);
}
