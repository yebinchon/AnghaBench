
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_uart_port {int n_adjustable_baud_rates; TYPE_1__* baud_tolerance; } ;
struct TYPE_2__ {unsigned int lower_range_baud; unsigned int upper_range_baud; long tolerance; } ;



__attribute__((used)) static long tegra_get_tolerance_rate(struct tegra_uart_port *tup,
         unsigned int baud, long rate)
{
 int i;

 for (i = 0; i < tup->n_adjustable_baud_rates; ++i) {
  if (baud >= tup->baud_tolerance[i].lower_range_baud &&
      baud <= tup->baud_tolerance[i].upper_range_baud)
   return (rate + (rate *
    tup->baud_tolerance[i].tolerance) / 10000);
 }

 return rate;
}
