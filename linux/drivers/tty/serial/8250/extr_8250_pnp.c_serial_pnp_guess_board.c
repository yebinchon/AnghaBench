
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_dev {TYPE_1__* card; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 scalar_t__ check_name (int ) ;
 scalar_t__ check_resources (struct pnp_dev*) ;
 int pnp_dev_name (struct pnp_dev*) ;

__attribute__((used)) static int serial_pnp_guess_board(struct pnp_dev *dev)
{
 if (!(check_name(pnp_dev_name(dev)) ||
     (dev->card && check_name(dev->card->name))))
  return -ENODEV;

 if (check_resources(dev))
  return 0;

 return -ENODEV;
}
