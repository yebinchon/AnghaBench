
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_rproc {TYPE_1__* mb; } ;
struct rproc {int dev; struct stm32_rproc* priv; } ;
struct TYPE_2__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int dev_err (int *,char*,unsigned char const*) ;
 int strlen (unsigned char const*) ;
 int strncmp (int ,unsigned char const*,int ) ;

__attribute__((used)) static int stm32_rproc_mbox_idx(struct rproc *rproc, const unsigned char *name)
{
 struct stm32_rproc *ddata = rproc->priv;
 int i;

 for (i = 0; i < ARRAY_SIZE(ddata->mb); i++) {
  if (!strncmp(ddata->mb[i].name, name, strlen(name)))
   return i;
 }
 dev_err(&rproc->dev, "mailbox %s not found\n", name);

 return -EINVAL;
}
