
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDTO ;
 int sc1200wdt_write_data (int ,int ) ;

__attribute__((used)) static void sc1200wdt_stop(void)
{
 sc1200wdt_write_data(WDTO, 0);
}
