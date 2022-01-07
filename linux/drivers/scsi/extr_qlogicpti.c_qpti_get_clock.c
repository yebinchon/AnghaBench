
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlogicpti {unsigned int clock; int prom_node; } ;


 unsigned int prom_getintdefault (int ,char*,int) ;

__attribute__((used)) static void qpti_get_clock(struct qlogicpti *qpti)
{
 unsigned int cfreq;




 cfreq = prom_getintdefault(qpti->prom_node,"clock-frequency",40000000);
 qpti->clock = (cfreq + 500000)/1000000;
 if (qpti->clock == 0)
  qpti->clock = 40;
}
