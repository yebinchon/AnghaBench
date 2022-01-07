
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SBC7240_ENABLED_STATUS_BIT ;
 int SBC7240_ENABLE_PORT ;
 int inb_p (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wdt_status ;

__attribute__((used)) static inline void wdt_keepalive(void)
{
 if (test_bit(SBC7240_ENABLED_STATUS_BIT, &wdt_status))
  inb_p(SBC7240_ENABLE_PORT);
}
