
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDIOF_KEEPALIVEPING ;
 int WDST ;
 int sc1200wdt_read_data (int ,unsigned char*) ;

__attribute__((used)) static inline int sc1200wdt_status(void)
{
 unsigned char ret;

 sc1200wdt_read_data(WDST, &ret);




 return (ret & 0x01) ? 0 : WDIOF_KEEPALIVEPING;
}
