
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ irqs_disabled () ;
 int mdelay (unsigned long) ;
 int msleep (unsigned long) ;

__attribute__((used)) static void maybe_msleep(unsigned long ms)
{

 if (irqs_disabled())
  mdelay(ms);
 else
  msleep(ms);
}
