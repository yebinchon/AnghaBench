
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG_WDOG_BUSY ;
 int NOTIFY_DONE ;
 int clear_bit (int ,int *) ;
 int wdt_status ;

__attribute__((used)) static int wdt_resume(void)
{
 clear_bit(DIAG_WDOG_BUSY, &wdt_status);
 return NOTIFY_DONE;
}
