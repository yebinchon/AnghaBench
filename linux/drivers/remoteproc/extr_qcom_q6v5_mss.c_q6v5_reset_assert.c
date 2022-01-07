
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6v5 {int mss_restart; int pdc_reset; scalar_t__ has_alt_reset; } ;


 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int reset_control_reset (int ) ;

__attribute__((used)) static int q6v5_reset_assert(struct q6v5 *qproc)
{
 int ret;

 if (qproc->has_alt_reset) {
  reset_control_assert(qproc->pdc_reset);
  ret = reset_control_reset(qproc->mss_restart);
  reset_control_deassert(qproc->pdc_reset);
 } else {
  ret = reset_control_assert(qproc->mss_restart);
 }

 return ret;
}
