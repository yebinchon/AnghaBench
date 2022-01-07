
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint ;
struct nvec_chip {int rx_work; int ec_transfer; TYPE_1__* rx; scalar_t__ state; int rx_lock; int rx_data; int dev; } ;
struct TYPE_4__ {scalar_t__ pos; scalar_t__* data; int node; } ;


 scalar_t__ NVEC_BAT ;
 int complete (int *) ;
 int dev_err (int ,char*,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int nvec_msg_free (struct nvec_chip*,TYPE_1__*) ;
 int nvec_msg_is_event (TYPE_1__*) ;
 scalar_t__ nvec_msg_size (TYPE_1__*) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nvec_rx_completed(struct nvec_chip *nvec)
{
 if (nvec->rx->pos != nvec_msg_size(nvec->rx)) {
  dev_err(nvec->dev, "RX incomplete: Expected %u bytes, got %u\n",
   (uint)nvec_msg_size(nvec->rx),
   (uint)nvec->rx->pos);

  nvec_msg_free(nvec, nvec->rx);
  nvec->state = 0;


  if (nvec->rx->data[0] == NVEC_BAT)
   complete(&nvec->ec_transfer);

  return;
 }

 spin_lock(&nvec->rx_lock);





 list_add_tail(&nvec->rx->node, &nvec->rx_data);

 spin_unlock(&nvec->rx_lock);

 nvec->state = 0;

 if (!nvec_msg_is_event(nvec->rx))
  complete(&nvec->ec_transfer);

 schedule_work(&nvec->rx_work);
}
