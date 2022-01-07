
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeonfb_info {scalar_t__ no_schedule; } ;


 int mdelay (unsigned long) ;
 int msleep (unsigned long) ;
 scalar_t__ oops_in_progress ;

void _radeon_msleep(struct radeonfb_info *rinfo, unsigned long ms)
{
 if (rinfo->no_schedule || oops_in_progress)
  mdelay(ms);
 else
  msleep(ms);
}
