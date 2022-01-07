
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keystone_rproc {int reset; } ;


 int reset_control_assert (int ) ;

__attribute__((used)) static void keystone_rproc_dsp_reset(struct keystone_rproc *ksproc)
{
 reset_control_assert(ksproc->reset);
}
