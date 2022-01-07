
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atafb_par {int dummy; } ;
struct TYPE_2__ {int (* get_par ) (struct atafb_par*) ;} ;


 struct atafb_par current_par ;
 scalar_t__ current_par_valid ;
 TYPE_1__* fbhw ;
 int stub1 (struct atafb_par*) ;

__attribute__((used)) static void ata_get_par(struct atafb_par *par)
{
 if (current_par_valid)
  *par = current_par;
 else
  fbhw->get_par(par);
}
