
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



uint16_t
qla2x00_calc_iocbs_32(uint16_t dsds)
{
 uint16_t iocbs;

 iocbs = 1;
 if (dsds > 3) {
  iocbs += (dsds - 3) / 7;
  if ((dsds - 3) % 7)
   iocbs++;
 }
 return (iocbs);
}
