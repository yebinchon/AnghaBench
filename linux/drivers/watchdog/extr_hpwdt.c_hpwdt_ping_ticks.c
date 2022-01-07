
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HPWDT_MAX_TICKS ;
 int hpwdt_timer_reg ;
 int iowrite16 (int,int ) ;
 int min (int,int ) ;

__attribute__((used)) static void hpwdt_ping_ticks(int val)
{
 val = min(val, HPWDT_MAX_TICKS);
 iowrite16(val, hpwdt_timer_reg);
}
