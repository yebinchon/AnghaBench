
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int update_msi_enable (struct irq_data*,int) ;

__attribute__((used)) static void tango_mask(struct irq_data *d)
{
 update_msi_enable(d, 0);
}
