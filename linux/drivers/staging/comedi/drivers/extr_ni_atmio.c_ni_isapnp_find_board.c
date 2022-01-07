
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pnp_dev {int card; } ;
struct TYPE_3__ {int isapnp_id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EAGAIN ;
 int ENODEV ;
 int ENOMEM ;
 int ISAPNP_FUNCTION (int ) ;
 int ISAPNP_VENDOR (char,char,char) ;
 TYPE_1__* ni_boards ;
 scalar_t__ pnp_activate_dev (struct pnp_dev*) ;
 scalar_t__ pnp_device_attach (struct pnp_dev*) ;
 int pnp_device_detach (struct pnp_dev*) ;
 struct pnp_dev* pnp_find_dev (int *,int ,int ,int *) ;
 int pnp_irq_valid (struct pnp_dev*,int ) ;
 int pnp_port_valid (struct pnp_dev*,int ) ;

__attribute__((used)) static int ni_isapnp_find_board(struct pnp_dev **dev)
{
 struct pnp_dev *isapnp_dev = ((void*)0);
 int i;

 for (i = 0; i < ARRAY_SIZE(ni_boards); i++) {
  isapnp_dev =
   pnp_find_dev(((void*)0),
         ISAPNP_VENDOR('N', 'I', 'C'),
         ISAPNP_FUNCTION(ni_boards[i].isapnp_id),
         ((void*)0));

  if (!isapnp_dev || !isapnp_dev->card)
   continue;

  if (pnp_device_attach(isapnp_dev) < 0)
   continue;

  if (pnp_activate_dev(isapnp_dev) < 0) {
   pnp_device_detach(isapnp_dev);
   return -EAGAIN;
  }

  if (!pnp_port_valid(isapnp_dev, 0) ||
      !pnp_irq_valid(isapnp_dev, 0)) {
   pnp_device_detach(isapnp_dev);
   return -ENOMEM;
  }
  break;
 }
 if (i == ARRAY_SIZE(ni_boards))
  return -ENODEV;
 *dev = isapnp_dev;
 return 0;
}
