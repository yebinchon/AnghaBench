
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fujitsu_ack () ;
 int fujitsu_send_state () ;
 int fujitsu_status () ;
 int msleep (int) ;

__attribute__((used)) static void fujitsu_reset(void)
{
 int timeout = 50;

 fujitsu_ack();

 while ((fujitsu_status() & 0x02) && (--timeout))
  msleep(20);

 fujitsu_send_state();
}
