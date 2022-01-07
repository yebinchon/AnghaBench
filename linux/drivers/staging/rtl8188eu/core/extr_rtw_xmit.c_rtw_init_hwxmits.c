
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_xmit {scalar_t__ accnt; } ;



void rtw_init_hwxmits(struct hw_xmit *phwxmit, int entry)
{
 int i;

 for (i = 0; i < entry; i++, phwxmit++)
  phwxmit->accnt = 0;
}
