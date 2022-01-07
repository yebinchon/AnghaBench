
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvec_chip {scalar_t__ state; TYPE_1__* tx; int dev; } ;
struct TYPE_2__ {scalar_t__ pos; scalar_t__ size; } ;


 int dev_err (int ,char*) ;
 int nvec_gpio_set_value (struct nvec_chip*,int ) ;

__attribute__((used)) static void nvec_tx_completed(struct nvec_chip *nvec)
{

 if (nvec->tx->pos != nvec->tx->size) {
  dev_err(nvec->dev, "premature END_TRANS, resending\n");
  nvec->tx->pos = 0;
  nvec_gpio_set_value(nvec, 0);
 } else {
  nvec->state = 0;
 }
}
