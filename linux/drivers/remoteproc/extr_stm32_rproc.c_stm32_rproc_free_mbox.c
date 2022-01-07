
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_rproc {TYPE_1__* mb; } ;
struct rproc {struct stm32_rproc* priv; } ;
struct TYPE_2__ {int * chan; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int mbox_free_channel (int *) ;

__attribute__((used)) static void stm32_rproc_free_mbox(struct rproc *rproc)
{
 struct stm32_rproc *ddata = rproc->priv;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(ddata->mb); i++) {
  if (ddata->mb[i].chan)
   mbox_free_channel(ddata->mb[i].chan);
  ddata->mb[i].chan = ((void*)0);
 }
}
