
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {struct q6v5* priv; } ;
struct q6v5 {int mba_region; } ;
struct firmware {int size; int data; } ;


 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int q6v5_load(struct rproc *rproc, const struct firmware *fw)
{
 struct q6v5 *qproc = rproc->priv;

 memcpy(qproc->mba_region, fw->data, fw->size);

 return 0;
}
