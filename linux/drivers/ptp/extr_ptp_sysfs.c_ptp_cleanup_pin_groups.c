
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock {int pin_dev_attr; int pin_attr; } ;


 int kfree (int ) ;

void ptp_cleanup_pin_groups(struct ptp_clock *ptp)
{
 kfree(ptp->pin_attr);
 kfree(ptp->pin_dev_attr);
}
