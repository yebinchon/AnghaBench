
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvec_msg {int used; } ;
struct nvec_chip {int msg_pool; int dev; struct nvec_msg tx_scratch; } ;


 int atomic_set (int *,int ) ;
 int dev_vdbg (int ,char*,struct nvec_msg*) ;

void nvec_msg_free(struct nvec_chip *nvec, struct nvec_msg *msg)
{
 if (msg != &nvec->tx_scratch)
  dev_vdbg(nvec->dev, "INFO: Free %ti\n", msg - nvec->msg_pool);
 atomic_set(&msg->used, 0);
}
