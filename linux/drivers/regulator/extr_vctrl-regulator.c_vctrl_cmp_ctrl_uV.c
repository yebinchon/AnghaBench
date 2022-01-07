
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vctrl_voltage_table {int ctrl; } ;



__attribute__((used)) static int vctrl_cmp_ctrl_uV(const void *a, const void *b)
{
 const struct vctrl_voltage_table *at = a;
 const struct vctrl_voltage_table *bt = b;

 return at->ctrl - bt->ctrl;
}
